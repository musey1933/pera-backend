// setup.js – Tablo kurulumu ve örnek veri (Clever Cloud uyumlu)
const db = require('./database');

async function setup() {
  console.log('🔧 Tablolar kuruluyor...');

  await db.query(`
    CREATE TABLE IF NOT EXISTS phones (
      id          INT AUTO_INCREMENT PRIMARY KEY,
      brand       VARCHAR(50)  NOT NULL,
      name        VARCHAR(200) NOT NULL,
      img         TEXT,
      price       DECIMAL(10,2) NOT NULL,
      old_price   DECIMAL(10,2),
      rating      DECIMAL(3,1) DEFAULT 0,
      review_cnt  INT DEFAULT 0,
      store_count INT DEFAULT 0,
      badge       VARCHAR(10) DEFAULT '',
      discount    INT DEFAULT 0,
      year        INT,
      antutu      INT,
      geek_single INT,
      geek_multi  INT,
      sar_head    DECIMAL(4,2),
      sar_body    DECIMAL(4,2),
      drop_test   VARCHAR(100),
      water_test  VARCHAR(50),
      screen_prot VARCHAR(100),
      created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  await db.query(`
    CREATE TABLE IF NOT EXISTS phone_specs (
      id       INT AUTO_INCREMENT PRIMARY KEY,
      phone_id INT NOT NULL,
      spec_key VARCHAR(100) NOT NULL,
      spec_val VARCHAR(500),
      FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  await db.query(`
    CREATE TABLE IF NOT EXISTS phone_perf (
      id       INT AUTO_INCREMENT PRIMARY KEY,
      phone_id INT NOT NULL UNIQUE,
      cpu      INT DEFAULT 0,
      gpu      INT DEFAULT 0,
      ram      INT DEFAULT 0,
      battery  INT DEFAULT 0,
      camera   INT DEFAULT 0,
      display  INT DEFAULT 0,
      FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  await db.query(`
    CREATE TABLE IF NOT EXISTS store_prices (
      id         INT AUTO_INCREMENT PRIMARY KEY,
      phone_id   INT NOT NULL,
      store_name VARCHAR(100) NOT NULL,
      price      DECIMAL(10,2) NOT NULL,
      url        TEXT,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  await db.query(`
    CREATE TABLE IF NOT EXISTS users (
      id         INT AUTO_INCREMENT PRIMARY KEY,
      email      VARCHAR(200) NOT NULL UNIQUE,
      password   VARCHAR(200) NOT NULL,
      name       VARCHAR(100),
      verified   TINYINT(1) DEFAULT 0,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  await db.query(`
    CREATE TABLE IF NOT EXISTS price_alarms (
      id           INT AUTO_INCREMENT PRIMARY KEY,
      user_id      INT,
      phone_id     INT NOT NULL,
      target_price DECIMAL(10,2) NOT NULL,
      email        VARCHAR(200) NOT NULL,
      triggered    TINYINT(1) DEFAULT 0,
      created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `);

  console.log('✅ Tablolar oluşturuldu.');

  const [[{cnt}]] = await db.query('SELECT COUNT(*) as cnt FROM phones');
  if (cnt > 0) {
    console.log('ℹ️  Veri zaten var, örnek veri atlanıyor.');
    return;
  }

  const samplePhones = [
    {
      brand:'Apple', name:'iPhone 16 Pro Max 256GB',
      img:'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-9inch-deserttitanium?wid=800&hei=800&fmt=jpeg&qlt=90',
      price:89999, old_price:94999, rating:4.8, review_cnt:2840, store_count:9, badge:'hot', discount:5, year:2024,
      antutu:1750000, geek_single:3380, geek_multi:8520,
      sar_head:0.98, sar_body:0.96, drop_test:'MIL-STD-810H', water_test:'IP68', screen_prot:'Ceramic Shield',
      perf:{cpu:97,gpu:95,ram:82,battery:80,camera:96,display:98},
      specs:{'Ekran':'6.9" Super Retina XDR OLED 120Hz','İşlemci':'Apple A18 Pro','RAM':'8 GB','Depolama':'256 GB','Batarya':'4685 mAh','Kamera':'48 MP + 48 MP + 12 MP','OS':'iOS 18','5G':'Evet','Ağırlık':'227 g','USB':'USB-C 3.2 Gen 2','Şarj':'30W Kablolu · 25W MagSafe','Su Geçirmezlik':'IP68 (6m / 30dk)','Bluetooth':'5.3','WiFi':'Wi-Fi 7','NFC':'Evet'},
      stores:[{n:'Trendyol',p:89999,url:'https://trendyol.com'},{n:'Hepsiburada',p:91499,url:'https://hepsiburada.com'},{n:'Amazon TR',p:92000,url:'https://amazon.com.tr'},{n:'MediaMarkt',p:93500,url:'https://mediamarkt.com.tr'},{n:'Teknosa',p:91999,url:'https://teknosa.com'}]
    },
    {
      brand:'Apple', name:'iPhone 16 Pro 128GB',
      img:'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-3inch-blacktitanium?wid=800&hei=800&fmt=jpeg&qlt=90',
      price:79999, old_price:82999, rating:4.8, review_cnt:1980, store_count:8, badge:'new', discount:4, year:2024,
      antutu:1740000, geek_single:3370, geek_multi:8490,
      sar_head:1.05, sar_body:0.99, drop_test:'MIL-STD-810H', water_test:'IP68', screen_prot:'Ceramic Shield',
      perf:{cpu:97,gpu:94,ram:82,battery:68,camera:95,display:97},
      specs:{'Ekran':'6.3" Super Retina XDR OLED 120Hz','İşlemci':'Apple A18 Pro','RAM':'8 GB','Depolama':'128 GB','Batarya':'3582 mAh','Kamera':'48 MP + 48 MP + 12 MP','OS':'iOS 18','5G':'Evet','Ağırlık':'199 g','USB':'USB-C 3.2 Gen 2','Şarj':'27W Kablolu · 25W MagSafe','Su Geçirmezlik':'IP68 (6m / 30dk)','Bluetooth':'5.3','WiFi':'Wi-Fi 7','NFC':'Evet'},
      stores:[{n:'Trendyol',p:79999,url:'https://trendyol.com'},{n:'Hepsiburada',p:81000,url:'https://hepsiburada.com'},{n:'Amazon TR',p:80500,url:'https://amazon.com.tr'}]
    },
    {
      brand:'Samsung', name:'Galaxy S25 Ultra 512GB',
      img:'https://images.samsung.com/is/image/samsung/p6pim/tr/sm-s928bzkhtry/gallery/tr-galaxy-s25-ultra-s928-sm-s928bzkhtry-thumb-542836950?$650_519_PNG$',
      price:74999, old_price:79999, rating:4.7, review_cnt:1876, store_count:7, badge:'hot', discount:6, year:2025,
      antutu:2100000, geek_single:2950, geek_multi:9600,
      sar_head:1.06, sar_body:0.99, drop_test:'MIL-STD-810H', water_test:'IP68', screen_prot:'Gorilla Glass Armor 2',
      perf:{cpu:98,gpu:98,ram:92,battery:84,camera:98,display:99},
      specs:{'Ekran':'6.9" Dynamic AMOLED 2X 120Hz','İşlemci':'Snapdragon 8 Elite','RAM':'12 GB','Depolama':'512 GB','Batarya':'5000 mAh','Kamera':'200 MP + 10 MP + 50 MP + 12 MP','OS':'Android 15 (One UI 7)','5G':'Evet','Ağırlık':'218 g','USB':'USB-C 3.2','Şarj':'45W Kablolu · 15W Kablosuz','Su Geçirmezlik':'IP68 (2m / 30dk)','Bluetooth':'5.4','WiFi':'Wi-Fi 7','NFC':'Evet'},
      stores:[{n:'Trendyol',p:74999,url:'https://trendyol.com'},{n:'Samsung TR',p:76999,url:'https://samsung.com/tr'},{n:'Hepsiburada',p:75500,url:'https://hepsiburada.com'},{n:'MediaMarkt',p:77000,url:'https://mediamarkt.com.tr'}]
    },
    {
      brand:'Xiaomi', name:'14T Pro 512GB',
      img:'https://i02.appmifile.com/mi-com-product/fly-birds/xiaomi-14t-pro/pc/header-img.png',
      price:34999, old_price:38999, rating:4.6, review_cnt:1120, store_count:7, badge:'new', discount:10, year:2024,
      antutu:2050000, geek_single:2970, geek_multi:9450,
      sar_head:0.98, sar_body:0.94, drop_test:'MIL-STD-810H', water_test:'IP68', screen_prot:'Gorilla Glass 5',
      perf:{cpu:96,gpu:97,ram:90,battery:84,camera:90,display:92},
      specs:{'Ekran':'6.67" AMOLED 144Hz','İşlemci':'MediaTek Dimensity 9300+','RAM':'12 GB','Depolama':'512 GB','Batarya':'5000 mAh','Kamera':'50 MP + 50 MP + 12 MP','OS':'Android 14 (HyperOS)','5G':'Evet','Ağırlık':'209 g','USB':'USB-C 3.2','Şarj':'120W Kablolu · 50W Kablosuz','Su Geçirmezlik':'IP68','Bluetooth':'5.4','WiFi':'Wi-Fi 7','NFC':'Evet'},
      stores:[{n:'Trendyol',p:34999,url:'https://trendyol.com'},{n:'Hepsiburada',p:35999,url:'https://hepsiburada.com'},{n:'Mi Türkiye',p:36500,url:'https://mi.com/tr'}]
    },
    {
      brand:'OnePlus', name:'13 512GB',
      img:'https://oasis.opstatics.com/content/dam/oasis/page/2025/global/oneplus-13/spec/Silver.png',
      price:38999, old_price:42999, rating:4.7, review_cnt:680, store_count:5, badge:'hot', discount:9, year:2025,
      antutu:2180000, geek_single:2990, geek_multi:9620,
      sar_head:1.14, sar_body:1.02, drop_test:'MIL-STD-810H', water_test:'IP65', screen_prot:'Ceramic Shield',
      perf:{cpu:99,gpu:99,ram:95,battery:94,camera:86,display:95},
      specs:{'Ekran':'6.82" LTPO AMOLED 120Hz','İşlemci':'Snapdragon 8 Elite','RAM':'16 GB','Depolama':'512 GB','Batarya':'6000 mAh','Kamera':'50 MP + 50 MP + 50 MP','OS':'Android 15 (OxygenOS 15)','5G':'Evet','Ağırlık':'210 g','USB':'USB-C 3.2','Şarj':'100W Kablolu · 50W Kablosuz','Su Geçirmezlik':'IP65','Bluetooth':'5.4','WiFi':'Wi-Fi 7','NFC':'Evet'},
      stores:[{n:'Trendyol',p:38999,url:'https://trendyol.com'},{n:'Hepsiburada',p:39999,url:'https://hepsiburada.com'},{n:'Amazon TR',p:40500,url:'https://amazon.com.tr'}]
    }
  ];

  for (const phone of samplePhones) {
    const [r] = await db.query(
      `INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,
        antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot)
       VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`,
      [phone.brand,phone.name,phone.img,phone.price,phone.old_price,phone.rating,
       phone.review_cnt,phone.store_count,phone.badge,phone.discount,phone.year,
       phone.antutu,phone.geek_single,phone.geek_multi,phone.sar_head,phone.sar_body,
       phone.drop_test,phone.water_test,phone.screen_prot]
    );
    const pid = r.insertId;
    for (const [k,v] of Object.entries(phone.specs)) {
      await db.query('INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES (?,?,?)',[pid,k,v]);
    }
    const p = phone.perf;
    await db.query('INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES (?,?,?,?,?,?,?)',[pid,p.cpu,p.gpu,p.ram,p.battery,p.camera,p.display]);
    for (const s of phone.stores) {
      await db.query('INSERT INTO store_prices (phone_id,store_name,price,url) VALUES (?,?,?,?)',[pid,s.n,s.p,s.url]);
    }
  }

  console.log('✅ Örnek veriler eklendi. 🎉');
}

module.exports = setup;
