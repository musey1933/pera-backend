# PERA Backend – Kurulum Rehberi

## Gereksinimler
- Node.js 18+  →  https://nodejs.org
- MySQL 8+     →  https://mysql.com (veya XAMPP)

---

## 1. Kurulum

```bash
# Projeyi aç
cd pera-backend

# Paketleri yükle
npm install

# .env dosyasını oluştur
cp .env.example .env
```

Sonra `.env` dosyasını açıp şu alanları doldurun:
```
DB_PASS=mysql_şifreniz
JWT_SECRET=rastgele_uzun_bir_metin_buraya
EMAIL_USER=gmail_adresiniz
EMAIL_PASS=gmail_uygulama_şifresi
```

---

## 2. Veritabanını Kur

```bash
node database/setup.js
```

Bu komut:
- `pera_db` veritabanını oluşturur
- 6 tabloyu oluşturur (phones, phone_specs, phone_perf, store_prices, users, price_alarms)
- Örnek telefon verilerini ekler

---

## 3. Sunucuyu Başlat

```bash
# Geliştirme modu (otomatik yeniden başlar)
npm run dev

# Production modu
npm start
```

Sunucu çalışınca: **http://localhost:3000**

---

## 4. API Uç Noktaları

| Method | URL                     | Açıklama                          |
|--------|-------------------------|-----------------------------------|
| GET    | /api/phones             | Tüm telefonlar (filtreli)         |
| GET    | /api/phones/:id         | Tek telefon detayı                |
| GET    | /api/brands             | Markalar ve sayıları              |
| GET    | /api/filters            | Filtre seçenekleri                |
| POST   | /api/auth/register      | Kayıt ol                         |
| POST   | /api/auth/login         | Giriş yap                        |
| GET    | /api/auth/me            | Giriş yapan kullanıcı (JWT)      |
| POST   | /api/alarms             | Fiyat alarmı kur                 |
| GET    | /api/alarms             | Alarmları listele (JWT)          |
| DELETE | /api/alarms/:id         | Alarm sil (JWT)                  |
| GET    | /api/health             | Sunucu sağlık kontrolü           |

---

## 5. Gmail Uygulama Şifresi (Fiyat Alarmı için)

1. Google hesabına git → Güvenlik → 2 adımlı doğrulama aç
2. "Uygulama şifreleri" → PERA için yeni şifre oluştur
3. `.env` dosyasındaki `EMAIL_PASS` alanına bu şifreyi yapıştır

---

## 6. Dosya Yapısı

```
pera-backend/
├── server.js          ← Express sunucu + tüm API route'ları
├── database.js        ← MySQL bağlantı havuzu
├── package.json
├── .env               ← Şifreler (GIT'E YÜKLEME!)
├── .env.example       ← Şablon
├── database/
│   └── setup.js      ← Veritabanı kurulum scripti
└── public/
    └── index.html    ← Frontend (API'ye bağlı)
```

---

## 7. Production'a Alma (getpera.tr)

1. Sunucunuza Node.js ve MySQL kurun
2. Bu klasörü sunucuya yükleyin
3. `.env` dosyasını production değerleriyle doldurun
4. `npm install --production` çalıştırın
5. `node database/setup.js` ile veritabanını kurun
6. PM2 ile sunucuyu başlatın:
   ```bash
   npm install -g pm2
   pm2 start server.js --name pera
   pm2 save
   ```
7. Nginx veya Apache ile port 3000'i getpera.tr'ye yönlendirin

---

Sorun yaşarsanız: `node -e "require('./database')"` komutu ile veritabanı bağlantısını test edin.
