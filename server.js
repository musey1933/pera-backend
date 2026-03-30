// server.js – PERA Backend Ana Sunucu
require('dotenv').config();
const express  = require('express');
const cors     = require('cors');
const path     = require('path');
const bcrypt   = require('bcryptjs');
const jwt      = require('jsonwebtoken');
const nodemailer = require('nodemailer');
const db       = require('./database');

const app  = express();
const PORT = process.env.PORT || 3000;

// ── MIDDLEWARE ────────────────────────────────────────────────────────────────
app.use(cors());
app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));   // Frontend dosyaları

// ── JWT DOĞRULAMA MIDDLEWARE ──────────────────────────────────────────────────
function authMiddleware(req, res, next) {
  const token = req.headers.authorization?.split(' ')[1];
  if (!token) return res.status(401).json({ error: 'Token gerekli' });
  try {
    req.user = jwt.verify(token, process.env.JWT_SECRET);
    next();
  } catch {
    res.status(401).json({ error: 'Geçersiz token' });
  }
}

// ── E-POSTA GÖNDERICI ─────────────────────────────────────────────────────────
const mailer = nodemailer.createTransport({
  service: 'gmail',
  auth: { user: process.env.EMAIL_USER, pass: process.env.EMAIL_PASS }
});

// ════════════════════════════════════════════════════════════════════════════
// TELEFON API'LARI
// ════════════════════════════════════════════════════════════════════════════

// GET /api/phones – Tüm telefonlar (filtre + sıralama destekli)
// Parametreler: brand, minPrice, maxPrice, sort, search, badge, year
app.get('/api/phones', async (req, res) => {
  try {
    let sql = `
      SELECT p.*,
        MIN(sp.price) AS min_store_price,
        COUNT(DISTINCT sp.id) AS live_store_count
      FROM phones p
      LEFT JOIN store_prices sp ON sp.phone_id = p.id
      WHERE 1=1
    `;
    const params = [];

    if (req.query.brand && req.query.brand !== 'Tümü') {
      sql += ' AND p.brand = ?'; params.push(req.query.brand);
    }
    if (req.query.minPrice) {
      sql += ' AND p.price >= ?'; params.push(Number(req.query.minPrice));
    }
    if (req.query.maxPrice) {
      sql += ' AND p.price <= ?'; params.push(Number(req.query.maxPrice));
    }
    if (req.query.badge) {
      sql += ' AND p.badge = ?'; params.push(req.query.badge);
    }
    if (req.query.year) {
      sql += ' AND p.year = ?'; params.push(Number(req.query.year));
    }
    if (req.query.search) {
      const q = `%${req.query.search}%`;
      sql += ' AND (p.name LIKE ? OR p.brand LIKE ?)';
      params.push(q, q);
    }

    sql += ' GROUP BY p.id';

    const sortMap = {
      price_asc:  'p.price ASC',
      price_desc: 'p.price DESC',
      rating:     'p.rating DESC',
      discount:   'p.discount DESC',
      score:      'p.antutu DESC',
      newest:     'p.year DESC',
      relevant:   'p.review_cnt DESC'
    };
    sql += ` ORDER BY ${sortMap[req.query.sort] || 'p.review_cnt DESC'}`;

    const [phones] = await db.query(sql, params);
    res.json({ success: true, count: phones.length, data: phones });
  } catch (err) {
    console.error('GET /api/phones hatası:', err.message);
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// GET /api/phones/:id – Tek telefon detayı (spec, perf, mağaza fiyatları dahil)
app.get('/api/phones/:id', async (req, res) => {
  try {
    const id = req.params.id;

    const [[phone]]  = await db.query('SELECT * FROM phones WHERE id = ?', [id]);
    if (!phone) return res.status(404).json({ error: 'Telefon bulunamadı' });

    const [specs]  = await db.query('SELECT spec_key, spec_val FROM phone_specs WHERE phone_id = ?', [id]);
    const [[perf]] = await db.query('SELECT * FROM phone_perf WHERE phone_id = ?', [id]);
    const [stores] = await db.query(
      'SELECT store_name, price, url FROM store_prices WHERE phone_id = ? ORDER BY price ASC', [id]
    );

    // specs'i key-value objesine dönüştür
    const specsObj = {};
    specs.forEach(s => { specsObj[s.spec_key] = s.spec_val; });

    res.json({
      success: true,
      data: { ...phone, specs: specsObj, perf: perf || {}, stores }
    });
  } catch (err) {
    console.error('GET /api/phones/:id hatası:', err.message);
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// GET /api/brands – Markalar ve telefon sayısı
app.get('/api/brands', async (req, res) => {
  try {
    const [rows] = await db.query(
      'SELECT brand, COUNT(*) as count FROM phones GROUP BY brand ORDER BY count DESC'
    );
    res.json({ success: true, data: rows });
  } catch (err) {
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// ════════════════════════════════════════════════════════════════════════════
// KULLANICI API'LARI
// ════════════════════════════════════════════════════════════════════════════

// POST /api/auth/register – Kayıt Ol
app.post('/api/auth/register', async (req, res) => {
  try {
    const { email, password, name } = req.body;
    if (!email || !password || password.length < 6) {
      return res.status(400).json({ error: 'E-posta ve en az 6 karakterli şifre gerekli.' });
    }

    const [[existing]] = await db.query('SELECT id FROM users WHERE email = ?', [email]);
    if (existing) return res.status(400).json({ error: 'Bu e-posta zaten kayıtlı.' });

    const hashed = await bcrypt.hash(password, 12);
    const [result] = await db.query(
      'INSERT INTO users (email, password, name) VALUES (?,?,?)',
      [email, hashed, name || '']
    );

    const token = jwt.sign(
      { userId: result.insertId, email },
      process.env.JWT_SECRET,
      { expiresIn: '30d' }
    );

    res.json({ success: true, token, user: { id: result.insertId, email, name } });
  } catch (err) {
    console.error('Register hatası:', err.message);
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// POST /api/auth/login – Giriş Yap
app.post('/api/auth/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    if (!email || !password) return res.status(400).json({ error: 'E-posta ve şifre gerekli.' });

    const [[user]] = await db.query('SELECT * FROM users WHERE email = ?', [email]);
    if (!user) return res.status(401).json({ error: 'E-posta veya şifre yanlış.' });

    const match = await bcrypt.compare(password, user.password);
    if (!match) return res.status(401).json({ error: 'E-posta veya şifre yanlış.' });

    const token = jwt.sign(
      { userId: user.id, email: user.email },
      process.env.JWT_SECRET,
      { expiresIn: '30d' }
    );

    res.json({
      success: true, token,
      user: { id: user.id, email: user.email, name: user.name }
    });
  } catch (err) {
    console.error('Login hatası:', err.message);
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// GET /api/auth/me – Giriş yapan kullanıcı bilgisi
app.get('/api/auth/me', authMiddleware, async (req, res) => {
  try {
    const [[user]] = await db.query(
      'SELECT id, email, name, created_at FROM users WHERE id = ?', [req.user.userId]
    );
    if (!user) return res.status(404).json({ error: 'Kullanıcı bulunamadı' });
    res.json({ success: true, data: user });
  } catch (err) {
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// ════════════════════════════════════════════════════════════════════════════
// FİYAT ALARMI API'LARI
// ════════════════════════════════════════════════════════════════════════════

// POST /api/alarms – Fiyat alarmı oluştur (giriş gerekmez, sadece e-posta yeterli)
app.post('/api/alarms', async (req, res) => {
  try {
    const { phoneId, targetPrice, email } = req.body;
    if (!phoneId || !targetPrice || !email) {
      return res.status(400).json({ error: 'phoneId, targetPrice ve email gerekli.' });
    }

    const [[phone]] = await db.query('SELECT id, name, price FROM phones WHERE id = ?', [phoneId]);
    if (!phone) return res.status(404).json({ error: 'Telefon bulunamadı.' });

    // Zaten alarm var mı?
    const [[existing]] = await db.query(
      'SELECT id FROM price_alarms WHERE phone_id=? AND email=? AND triggered=0',
      [phoneId, email]
    );
    if (existing) return res.status(400).json({ error: 'Bu ürün için zaten aktif alarmınız var.' });

    await db.query(
      'INSERT INTO price_alarms (phone_id, target_price, email) VALUES (?,?,?)',
      [phoneId, targetPrice, email]
    );

    // Onay e-postası gönder
    try {
      await mailer.sendMail({
        from: `"PERA Fiyat Alarmı" <${process.env.EMAIL_USER}>`,
        to: email,
        subject: `✅ Fiyat Alarmı Kuruldu – ${phone.name}`,
        html: `
          <div style="font-family:sans-serif;max-width:500px">
            <h2 style="color:#1a3fd4">PERA Fiyat Alarmı</h2>
            <p><strong>${phone.name}</strong> için fiyat alarmınız kuruldu.</p>
            <p>Hedef fiyat: <strong>${Number(targetPrice).toLocaleString('tr-TR')}₺</strong></p>
            <p>Şu anki fiyat: <strong>${Number(phone.price).toLocaleString('tr-TR')}₺</strong></p>
            <p>Fiyat hedefin altına düştüğünde size e-posta göndereceğiz.</p>
            <hr>
            <small style="color:#888">getpera.tr</small>
          </div>
        `
      });
    } catch (mailErr) {
      console.warn('E-posta gönderilemedi (alarm kaydedildi):', mailErr.message);
    }

    res.json({ success: true, message: 'Fiyat alarmı kuruldu!' });
  } catch (err) {
    console.error('POST /api/alarms hatası:', err.message);
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// GET /api/alarms – Kullanıcının alarmları (giriş gerekli)
app.get('/api/alarms', authMiddleware, async (req, res) => {
  try {
    const [alarms] = await db.query(`
      SELECT pa.*, p.name as phone_name, p.img as phone_img, p.price as current_price
      FROM price_alarms pa
      JOIN phones p ON p.id = pa.phone_id
      WHERE pa.email = ?
      ORDER BY pa.created_at DESC
    `, [req.user.email]);
    res.json({ success: true, data: alarms });
  } catch (err) {
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// DELETE /api/alarms/:id – Alarm sil
app.delete('/api/alarms/:id', authMiddleware, async (req, res) => {
  try {
    await db.query('DELETE FROM price_alarms WHERE id=? AND email=?', [req.params.id, req.user.email]);
    res.json({ success: true });
  } catch (err) {
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// ── FİYAT ALARMI KONTROL JOB'U (her 30 dakikada çalışır) ─────────────────────
setInterval(async () => {
  try {
    const [alarms] = await db.query(`
      SELECT pa.*, p.name as phone_name, p.price as current_price
      FROM price_alarms pa
      JOIN phones p ON p.id = pa.phone_id
      WHERE pa.triggered = 0
        AND p.price <= pa.target_price
    `);

    for (const alarm of alarms) {
      try {
        await mailer.sendMail({
          from: `"PERA Fiyat Alarmı" <${process.env.EMAIL_USER}>`,
          to: alarm.email,
          subject: `🔔 Fiyat Düştü! – ${alarm.phone_name}`,
          html: `
            <div style="font-family:sans-serif;max-width:500px">
              <h2 style="color:#059669">🔔 Fiyat Alarmı Tetiklendi!</h2>
              <p><strong>${alarm.phone_name}</strong> için belirlediğiniz fiyat hedefine ulaşıldı!</p>
              <p>Mevcut fiyat: <strong style="color:#059669">${Number(alarm.current_price).toLocaleString('tr-TR')}₺</strong></p>
              <p>Hedef fiyatınız: <strong>${Number(alarm.target_price).toLocaleString('tr-TR')}₺</strong></p>
              <a href="https://getpera.tr" style="background:#1a3fd4;color:#fff;padding:10px 20px;border-radius:8px;text-decoration:none;display:inline-block;margin-top:12px">
                Hemen Satın Al →
              </a>
              <hr><small style="color:#888">getpera.tr</small>
            </div>
          `
        });
        await db.query('UPDATE price_alarms SET triggered=1 WHERE id=?', [alarm.id]);
        console.log(`📧 Alarm e-postası gönderildi: ${alarm.email} – ${alarm.phone_name}`);
      } catch (mailErr) {
        console.warn('Alarm e-postası gönderilemedi:', mailErr.message);
      }
    }
  } catch (err) {
    console.error('Alarm job hatası:', err.message);
  }
}, 30 * 60 * 1000); // 30 dakika

// ════════════════════════════════════════════════════════════════════════════
// FİLTRE SEÇENEKLER API'LARI
// ════════════════════════════════════════════════════════════════════════════

// GET /api/filters – Mevcut filtre değerlerini döndür
app.get('/api/filters', async (req, res) => {
  try {
    const [ramRows] = await db.query(
      `SELECT spec_val as val, COUNT(*) as count FROM phone_specs
       WHERE spec_key='RAM' GROUP BY spec_val ORDER BY CAST(spec_val AS UNSIGNED)`
    );
    const [storageRows] = await db.query(
      `SELECT spec_val as val, COUNT(*) as count FROM phone_specs
       WHERE spec_key='Depolama' GROUP BY spec_val ORDER BY CAST(spec_val AS UNSIGNED)`
    );
    const [storeRows] = await db.query(
      'SELECT store_name as val, COUNT(*) as count FROM store_prices GROUP BY store_name ORDER BY count DESC'
    );
    const [[priceRange]] = await db.query('SELECT MIN(price) as minP, MAX(price) as maxP FROM phones');

    res.json({
      success: true,
      data: { ram: ramRows, storage: storageRows, stores: storeRows, priceRange }
    });
  } catch (err) {
    res.status(500).json({ error: 'Sunucu hatası' });
  }
});

// ── SAĞLIK KONTROLÜ ───────────────────────────────────────────────────────────
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', app: 'PERA Backend', time: new Date().toISOString() });
});

// ── TÜM DİĞER ROUTE'LARI INDEX.HTML'E YÖNLENDİR (SPA) ───────────────────────
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// ── SUNUCUYU BAŞLAT ───────────────────────────────────────────────────────────
app.listen(PORT, () => {
  console.log(`\n🚀 PERA Sunucusu çalışıyor: http://localhost:${PORT}`);
  console.log(`📡 API: http://localhost:${PORT}/api/phones`);
  console.log(`🔍 Ortam: ${process.env.NODE_ENV || 'development'}\n`);
});
