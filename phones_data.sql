-- PERA – 100+ Telefon Verisi
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE phones; TRUNCATE phone_specs; TRUNCATE phone_perf; TRUNCATE store_prices;
SET FOREIGN_KEY_CHECKS=1;

-- ══════════════════════════════════════════════
-- APPLE (10 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Apple','iPhone 16 Pro Max 256GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-9inch-deserttitanium?wid=800&hei=800&fmt=jpeg&qlt=90',89999,94999,4.8,2840,9,'hot',5,2024,1750000,3380,8520,0.98,0.96,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 16 Pro 128GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-3inch-blacktitanium?wid=800&hei=800&fmt=jpeg&qlt=90',79999,82999,4.8,1980,8,'new',4,2024,1740000,3370,8490,1.05,0.99,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 16 128GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-finish-select-202409-6-1inch-black?wid=800&hei=800&fmt=jpeg&qlt=90',54999,57999,4.7,3200,10,'',5,2024,1620000,3200,8100,1.08,1.02,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 16 Plus 256GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-plus-finish-select-202409-6-7inch-black?wid=800&hei=800&fmt=jpeg&qlt=90',64999,68999,4.7,1540,8,'',6,2024,1620000,3200,8100,1.10,1.04,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 15 Pro Max 256GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium?wid=800&hei=800&fmt=jpeg&qlt=90',72999,84999,4.7,4100,11,'best',14,2023,1470000,2990,8470,1.01,0.98,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 15 256GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-finish-select-202309-6-1inch-pink?wid=800&hei=800&fmt=jpeg&qlt=90',52999,59999,4.7,4210,11,'best',12,2023,1390000,2940,7380,1.09,1.05,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 14 128GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-finish-select-202209-6-1inch-blue?wid=800&hei=800&fmt=jpeg&qlt=90',39999,49999,4.6,6800,12,'best',20,2022,1100000,2390,5890,1.14,1.08,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 14 Pro 256GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-1inch-deeppurple?wid=800&hei=800&fmt=jpeg&qlt=90',54999,64999,4.7,3900,10,'',15,2022,1200000,2600,6800,1.12,1.06,'MIL-STD-810H','IP68','Ceramic Shield'),
('Apple','iPhone 13 128GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-finish-select-2023-6-1inch-blue?wid=800&hei=800&fmt=jpeg&qlt=90',29999,39999,4.6,8900,12,'best',25,2021,830000,1730,4620,1.08,1.02,'MIL-STD-810G','IP68','Ceramic Shield'),
('Apple','iPhone SE (3. Nesil) 64GB','https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-se-finish-select-202203-6-1inch-starlight?wid=800&hei=800&fmt=jpeg&qlt=90',19999,23999,4.4,3100,8,'',17,2022,740000,1700,4500,1.18,1.15,'MIL-STD-810G','IP67','Ion-X Cam');

-- Specs Apple
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(1,'Ekran','6.9" Super Retina XDR OLED 120Hz'),(1,'İşlemci','Apple A18 Pro'),(1,'RAM','8 GB'),(1,'Depolama','256 GB'),(1,'Batarya','4685 mAh'),(1,'Kamera','48 MP + 48 MP + 12 MP'),(1,'OS','iOS 18'),(1,'5G','Evet'),(1,'Ağırlık','227 g'),(1,'USB','USB-C 3.2 Gen 2'),(1,'Şarj','30W Kablolu · 25W MagSafe'),(1,'Su Geçirmezlik','IP68 (6m/30dk)'),(1,'WiFi','Wi-Fi 7'),(1,'Bluetooth','5.3'),(1,'NFC','Evet'),
(2,'Ekran','6.3" Super Retina XDR OLED 120Hz'),(2,'İşlemci','Apple A18 Pro'),(2,'RAM','8 GB'),(2,'Depolama','128 GB'),(2,'Batarya','3582 mAh'),(2,'Kamera','48 MP + 48 MP + 12 MP'),(2,'OS','iOS 18'),(2,'5G','Evet'),(2,'Ağırlık','199 g'),(2,'USB','USB-C 3.2 Gen 2'),(2,'Şarj','27W Kablolu · 25W MagSafe'),(2,'Su Geçirmezlik','IP68 (6m/30dk)'),(2,'WiFi','Wi-Fi 7'),(2,'Bluetooth','5.3'),(2,'NFC','Evet'),
(3,'Ekran','6.1" OLED 60Hz'),(3,'İşlemci','Apple A16 Bionic'),(3,'RAM','6 GB'),(3,'Depolama','128 GB'),(3,'Batarya','3561 mAh'),(3,'Kamera','48 MP + 12 MP'),(3,'OS','iOS 18'),(3,'5G','Evet'),(3,'Ağırlık','170 g'),(3,'USB','USB-C 2.0'),(3,'Şarj','20W Kablolu · 15W MagSafe'),(3,'Su Geçirmezlik','IP68 (6m/30dk)'),(3,'WiFi','Wi-Fi 7'),(3,'Bluetooth','5.3'),(3,'NFC','Evet'),
(4,'Ekran','6.7" OLED 60Hz'),(4,'İşlemci','Apple A16 Bionic'),(4,'RAM','6 GB'),(4,'Depolama','256 GB'),(4,'Batarya','4674 mAh'),(4,'Kamera','48 MP + 12 MP'),(4,'OS','iOS 18'),(4,'5G','Evet'),(4,'Ağırlık','203 g'),(4,'USB','USB-C 2.0'),(4,'Şarj','20W Kablolu · 15W MagSafe'),(4,'Su Geçirmezlik','IP68 (6m/30dk)'),(4,'WiFi','Wi-Fi 7'),(4,'Bluetooth','5.3'),(4,'NFC','Evet'),
(5,'Ekran','6.7" Super Retina XDR OLED 120Hz'),(5,'İşlemci','Apple A17 Pro'),(5,'RAM','8 GB'),(5,'Depolama','256 GB'),(5,'Batarya','4422 mAh'),(5,'Kamera','48 MP + 12 MP + 12 MP'),(5,'OS','iOS 18'),(5,'5G','Evet'),(5,'Ağırlık','221 g'),(5,'USB','USB-C 3.2 Gen 2'),(5,'Şarj','27W Kablolu · 15W MagSafe'),(5,'Su Geçirmezlik','IP68 (6m/30dk)'),(5,'WiFi','Wi-Fi 6E'),(5,'Bluetooth','5.3'),(5,'NFC','Evet'),
(6,'Ekran','6.1" Super Retina XDR OLED 60Hz'),(6,'İşlemci','Apple A16 Bionic'),(6,'RAM','6 GB'),(6,'Depolama','256 GB'),(6,'Batarya','3877 mAh'),(6,'Kamera','48 MP + 12 MP'),(6,'OS','iOS 18'),(6,'5G','Evet'),(6,'Ağırlık','171 g'),(6,'USB','USB-C 2.0'),(6,'Şarj','20W Kablolu · 15W MagSafe'),(6,'Su Geçirmezlik','IP68 (6m/30dk)'),(6,'WiFi','Wi-Fi 6'),(6,'Bluetooth','5.3'),(6,'NFC','Evet'),
(7,'Ekran','6.1" OLED 60Hz'),(7,'İşlemci','Apple A15 Bionic'),(7,'RAM','6 GB'),(7,'Depolama','128 GB'),(7,'Batarya','3279 mAh'),(7,'Kamera','12 MP + 12 MP'),(7,'OS','iOS 18'),(7,'5G','Evet'),(7,'Ağırlık','172 g'),(7,'USB','Lightning'),(7,'Şarj','20W Kablolu · 15W MagSafe'),(7,'Su Geçirmezlik','IP68 (6m/30dk)'),(7,'WiFi','Wi-Fi 6'),(7,'Bluetooth','5.3'),(7,'NFC','Evet'),
(8,'Ekran','6.1" Super Retina XDR OLED 120Hz'),(8,'İşlemci','Apple A16 Bionic'),(8,'RAM','6 GB'),(8,'Depolama','256 GB'),(8,'Batarya','3200 mAh'),(8,'Kamera','48 MP + 12 MP + 12 MP'),(8,'OS','iOS 18'),(8,'5G','Evet'),(8,'Ağırlık','206 g'),(8,'USB','Lightning'),(8,'Şarj','27W Kablolu · 15W MagSafe'),(8,'Su Geçirmezlik','IP68 (6m/30dk)'),(8,'WiFi','Wi-Fi 6E'),(8,'Bluetooth','5.3'),(8,'NFC','Evet'),
(9,'Ekran','6.1" OLED 60Hz'),(9,'İşlemci','Apple A15 Bionic'),(9,'RAM','4 GB'),(9,'Depolama','128 GB'),(9,'Batarya','3227 mAh'),(9,'Kamera','12 MP + 12 MP'),(9,'OS','iOS 17'),(9,'5G','Evet'),(9,'Ağırlık','174 g'),(9,'USB','Lightning'),(9,'Şarj','20W Kablolu · 15W MagSafe'),(9,'Su Geçirmezlik','IP68 (6m/30dk)'),(9,'WiFi','Wi-Fi 6'),(9,'Bluetooth','5.3'),(9,'NFC','Evet'),
(10,'Ekran','4.7" Retina HD IPS 60Hz'),(10,'İşlemci','Apple A15 Bionic'),(10,'RAM','4 GB'),(10,'Depolama','64 GB'),(10,'Batarya','2018 mAh'),(10,'Kamera','12 MP'),(10,'OS','iOS 17'),(10,'5G','Hayır'),(10,'Ağırlık','144 g'),(10,'USB','Lightning'),(10,'Şarj','20W Kablolu'),(10,'Su Geçirmezlik','IP67 (1m/30dk)'),(10,'WiFi','Wi-Fi 6'),(10,'Bluetooth','5.0'),(10,'NFC','Evet');

-- Perf Apple
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(1,97,95,82,80,96,98),(2,97,94,82,68,95,97),(3,90,88,75,70,88,88),
(4,90,88,75,78,88,88),(5,94,92,82,78,94,96),(6,88,85,72,74,88,86),
(7,82,78,68,65,80,80),(8,88,86,72,62,90,90),(9,80,76,65,62,78,78),(10,72,65,50,42,68,60);

-- Stores Apple
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(1,'Trendyol',89999,'https://trendyol.com'),(1,'Hepsiburada',91499,'https://hepsiburada.com'),(1,'Amazon TR',92000,'https://amazon.com.tr'),(1,'MediaMarkt',93500,'https://mediamarkt.com.tr'),(1,'Teknosa',91999,'https://teknosa.com'),
(2,'Trendyol',79999,'https://trendyol.com'),(2,'Hepsiburada',81000,'https://hepsiburada.com'),(2,'Amazon TR',80500,'https://amazon.com.tr'),
(3,'Trendyol',54999,'https://trendyol.com'),(3,'Hepsiburada',55999,'https://hepsiburada.com'),(3,'Amazon TR',56500,'https://amazon.com.tr'),
(4,'Trendyol',64999,'https://trendyol.com'),(4,'Hepsiburada',65999,'https://hepsiburada.com'),
(5,'Trendyol',72999,'https://trendyol.com'),(5,'Hepsiburada',74000,'https://hepsiburada.com'),(5,'MediaMarkt',75000,'https://mediamarkt.com.tr'),
(6,'Trendyol',52999,'https://trendyol.com'),(6,'Hepsiburada',53500,'https://hepsiburada.com'),(6,'Amazon TR',54000,'https://amazon.com.tr'),
(7,'Trendyol',39999,'https://trendyol.com'),(7,'Hepsiburada',40500,'https://hepsiburada.com'),
(8,'Trendyol',54999,'https://trendyol.com'),(8,'Hepsiburada',55999,'https://hepsiburada.com'),
(9,'Trendyol',29999,'https://trendyol.com'),(9,'Hepsiburada',30500,'https://hepsiburada.com'),
(10,'Trendyol',19999,'https://trendyol.com'),(10,'Hepsiburada',20499,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- SAMSUNG (12 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Samsung','Galaxy S25 Ultra 512GB','https://images.samsung.com/is/image/samsung/p6pim/tr/2501/gallery/tr-galaxy-s25-ultra-501412-sm-s938bzageub-thumb-544258491?$650_519_PNG$',74999,79999,4.7,1876,7,'hot',6,2025,2100000,2950,9600,1.06,0.99,'MIL-STD-810H','IP68','Gorilla Glass Armor 2'),
('Samsung','Galaxy S25+ 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/2501/gallery/tr-galaxy-s25-sm-s931bzageub-thumb-544258488?$650_519_PNG$',54999,59999,4.7,1200,7,'new',8,2025,2050000,2920,9500,1.04,0.97,'MIL-STD-810H','IP68','Gorilla Glass Armor 2'),
('Samsung','Galaxy S25 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/2501/gallery/tr-galaxy-s25-sm-s931bzageub-thumb-544258488?$650_519_PNG$',44999,47999,4.6,980,7,'new',6,2025,2050000,2920,9500,1.03,0.96,'MIL-STD-810H','IP68','Gorilla Glass Armor 2'),
('Samsung','Galaxy S24 Ultra 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/2401/gallery/tr-galaxy-s24-ultra-s928-sm-s928bzkhtry-thumb-539055483?$650_519_PNG$',59999,74999,4.7,3200,9,'best',20,2024,1800000,2320,7250,1.09,1.02,'MIL-STD-810H','IP68','Gorilla Glass Armor'),
('Samsung','Galaxy Z Fold 6 512GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-f956bzageub/gallery/tr-galaxy-z-fold6-sm-f956bzageub-thumb-542027267?$650_519_PNG$',89999,99999,4.6,820,6,'new',10,2024,1950000,2300,7200,1.35,1.12,'Armor Aluminum','IPX8','Gorilla Glass Victus 2'),
('Samsung','Galaxy Z Flip 6 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-f741bzageub/gallery/tr-galaxy-z-flip6-sm-f741bzageub-thumb-542021840?$650_519_PNG$',44999,49999,4.5,1100,6,'',10,2024,1800000,2250,7100,1.28,1.10,'Armor Aluminum','IPX8','Gorilla Glass Victus 2'),
('Samsung','Galaxy A55 5G 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-a556ezaetur/gallery/tr-galaxy-a55-5g-sm-a556ezaetur-thumb-536602832?$650_519_PNG$',17999,20999,4.5,2540,10,'best',14,2024,620000,1080,3200,0.97,0.91,'MIL-STD-810H','IP67','Gorilla Glass Victus+'),
('Samsung','Galaxy A35 5G 128GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-a356ezaetur/gallery/tr-galaxy-a35-5g-sm-a356ezaetur-thumb-536225668?$650_519_PNG$',12999,15999,4.4,1800,9,'best',19,2024,580000,1020,3000,0.94,0.88,'MIL-STD-810H','IP67','Gorilla Glass Victus+'),
('Samsung','Galaxy A15 5G 128GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-a156bzkdtur/gallery/tr-galaxy-a15-5g-sm-a156bzkdtur-thumb-539939893?$650_519_PNG$',7999,9999,4.3,3200,9,'',20,2024,420000,720,2100,0.88,0.84,'Yok','IP54','Gorilla Glass 5'),
('Samsung','Galaxy M55 5G 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-m556bzkdtur/gallery/tr-galaxy-m55-5g-sm-m556bzkdtur-thumb-540424832?$650_519_PNG$',14999,17999,4.4,1400,8,'',17,2024,640000,1100,3300,0.96,0.90,'Yok','IP54','Gorilla Glass 5'),
('Samsung','Galaxy M15 5G 128GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-m156bzbdtur/gallery/tr-galaxy-m15-5g-sm-m156bzbdtur-thumb-539943430?$650_519_PNG$',6999,7999,4.3,4200,9,'',13,2024,380000,620,1850,0.85,0.82,'Yok','IP54','Gorilla Glass 5'),
('Samsung','Galaxy S23 FE 256GB','https://images.samsung.com/is/image/samsung/p6pim/tr/sm-s711bzgetur/gallery/tr-galaxy-s23-fe-sm-s711bzgetur-thumb-537244601?$650_519_PNG$',19999,26999,4.5,2800,10,'best',26,2023,880000,1820,4800,1.01,0.95,'MIL-STD-810H','IP68','Gorilla Glass 5');

-- Specs Samsung
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(11,'Ekran','6.9" Dynamic AMOLED 2X 120Hz'),(11,'İşlemci','Snapdragon 8 Elite'),(11,'RAM','12 GB'),(11,'Depolama','512 GB'),(11,'Batarya','5000 mAh'),(11,'Kamera','200 MP + 10 MP + 50 MP + 12 MP'),(11,'OS','Android 15 (One UI 7)'),(11,'5G','Evet'),(11,'Ağırlık','218 g'),(11,'USB','USB-C 3.2'),(11,'Şarj','45W Kablolu · 15W Kablosuz'),(11,'Su Geçirmezlik','IP68 (2m/30dk)'),(11,'WiFi','Wi-Fi 7'),(11,'Bluetooth','5.4'),(11,'NFC','Evet'),
(12,'Ekran','6.7" Dynamic AMOLED 2X 120Hz'),(12,'İşlemci','Snapdragon 8 Elite'),(12,'RAM','12 GB'),(12,'Depolama','256 GB'),(12,'Batarya','4900 mAh'),(12,'Kamera','50 MP + 10 MP + 10 MP'),(12,'OS','Android 15 (One UI 7)'),(12,'5G','Evet'),(12,'Ağırlık','190 g'),(12,'USB','USB-C 3.2'),(12,'Şarj','45W Kablolu · 15W Kablosuz'),(12,'Su Geçirmezlik','IP68 (2m/30dk)'),(12,'WiFi','Wi-Fi 7'),(12,'Bluetooth','5.4'),(12,'NFC','Evet'),
(13,'Ekran','6.2" Dynamic AMOLED 2X 120Hz'),(13,'İşlemci','Snapdragon 8 Elite'),(13,'RAM','12 GB'),(13,'Depolama','256 GB'),(13,'Batarya','4000 mAh'),(13,'Kamera','50 MP + 10 MP + 12 MP'),(13,'OS','Android 15 (One UI 7)'),(13,'5G','Evet'),(13,'Ağırlık','162 g'),(13,'USB','USB-C 3.2'),(13,'Şarj','25W Kablolu · 15W Kablosuz'),(13,'Su Geçirmezlik','IP68 (2m/30dk)'),(13,'WiFi','Wi-Fi 7'),(13,'Bluetooth','5.4'),(13,'NFC','Evet'),
(14,'Ekran','6.8" Dynamic AMOLED 2X 120Hz'),(14,'İşlemci','Snapdragon 8 Gen 3'),(14,'RAM','12 GB'),(14,'Depolama','256 GB'),(14,'Batarya','5000 mAh'),(14,'Kamera','200 MP + 10 MP + 50 MP + 12 MP'),(14,'OS','Android 15 (One UI 7)'),(14,'5G','Evet'),(14,'Ağırlık','232 g'),(14,'USB','USB-C 3.2'),(14,'Şarj','45W Kablolu · 15W Kablosuz'),(14,'Su Geçirmezlik','IP68 (2m/30dk)'),(14,'WiFi','Wi-Fi 7'),(14,'Bluetooth','5.3'),(14,'NFC','Evet'),
(15,'Ekran','7.6" Dynamic AMOLED 2X 120Hz (iç)'),(15,'İşlemci','Snapdragon 8 Gen 3'),(15,'RAM','12 GB'),(15,'Depolama','512 GB'),(15,'Batarya','4400 mAh'),(15,'Kamera','50 MP + 10 MP + 12 MP'),(15,'OS','Android 15 (One UI 7)'),(15,'5G','Evet'),(15,'Ağırlık','239 g'),(15,'USB','USB-C 3.2'),(15,'Şarj','25W Kablolu · 15W Kablosuz'),(15,'Su Geçirmezlik','IPX8 (1.5m/30dk)'),(15,'WiFi','Wi-Fi 7'),(15,'Bluetooth','5.3'),(15,'NFC','Evet'),
(16,'Ekran','6.7" Dynamic AMOLED 2X 120Hz'),(16,'İşlemci','Snapdragon 8 Gen 3'),(16,'RAM','12 GB'),(16,'Depolama','256 GB'),(16,'Batarya','4000 mAh'),(16,'Kamera','50 MP + 12 MP'),(16,'OS','Android 15 (One UI 7)'),(16,'5G','Evet'),(16,'Ağırlık','187 g'),(16,'USB','USB-C 3.2'),(16,'Şarj','25W Kablolu · 15W Kablosuz'),(16,'Su Geçirmezlik','IPX8 (1.5m/30dk)'),(16,'WiFi','Wi-Fi 6E'),(16,'Bluetooth','5.3'),(16,'NFC','Evet'),
(17,'Ekran','6.6" Super AMOLED 120Hz'),(17,'İşlemci','Exynos 1480'),(17,'RAM','8 GB'),(17,'Depolama','256 GB'),(17,'Batarya','5000 mAh'),(17,'Kamera','50 MP + 12 MP + 5 MP'),(17,'OS','Android 14 (One UI 6.1)'),(17,'5G','Evet'),(17,'Ağırlık','213 g'),(17,'USB','USB-C 2.0'),(17,'Şarj','25W Kablolu'),(17,'Su Geçirmezlik','IP67 (1m/30dk)'),(17,'WiFi','Wi-Fi 6'),(17,'Bluetooth','5.3'),(17,'NFC','Evet'),
(18,'Ekran','6.6" Super AMOLED 120Hz'),(18,'İşlemci','Exynos 1380'),(18,'RAM','6 GB'),(18,'Depolama','128 GB'),(18,'Batarya','5000 mAh'),(18,'Kamera','50 MP + 8 MP + 5 MP'),(18,'OS','Android 14 (One UI 6.1)'),(18,'5G','Evet'),(18,'Ağırlık','210 g'),(18,'USB','USB-C 2.0'),(18,'Şarj','25W Kablolu'),(18,'Su Geçirmezlik','IP67 (1m/30dk)'),(18,'WiFi','Wi-Fi 5'),(18,'Bluetooth','5.3'),(18,'NFC','Evet'),
(19,'Ekran','6.5" Super AMOLED 90Hz'),(19,'İşlemci','MediaTek Dimensity 6100+'),(19,'RAM','4 GB'),(19,'Depolama','128 GB'),(19,'Batarya','5000 mAh'),(19,'Kamera','50 MP + 2 MP + 2 MP'),(19,'OS','Android 14 (One UI 6)'),(19,'5G','Evet'),(19,'Ağırlık','200 g'),(19,'USB','USB-C 2.0'),(19,'Şarj','25W Kablolu'),(19,'Su Geçirmezlik','IP54'),(19,'WiFi','Wi-Fi 5'),(19,'Bluetooth','5.3'),(19,'NFC','Hayır'),
(20,'Ekran','6.7" Super AMOLED 120Hz'),(20,'İşlemci','Snapdragon 7s Gen 2'),(20,'RAM','8 GB'),(20,'Depolama','256 GB'),(20,'Batarya','5000 mAh'),(20,'Kamera','50 MP + 12 MP + 5 MP'),(20,'OS','Android 14 (One UI 6.1)'),(20,'5G','Evet'),(20,'Ağırlık','218 g'),(20,'USB','USB-C 2.0'),(20,'Şarj','45W Kablolu'),(20,'Su Geçirmezlik','IP54'),(20,'WiFi','Wi-Fi 6'),(20,'Bluetooth','5.3'),(20,'NFC','Evet'),
(21,'Ekran','6.5" Super AMOLED 90Hz'),(21,'İşlemci','MediaTek Dimensity 6100+'),(21,'RAM','4 GB'),(21,'Depolama','128 GB'),(21,'Batarya','6000 mAh'),(21,'Kamera','50 MP + 5 MP + 2 MP'),(21,'OS','Android 14 (One UI 6)'),(21,'5G','Evet'),(21,'Ağırlık','213 g'),(21,'USB','USB-C 2.0'),(21,'Şarj','25W Kablolu'),(21,'Su Geçirmezlik','IP54'),(21,'WiFi','Wi-Fi 5'),(21,'Bluetooth','5.3'),(21,'NFC','Hayır'),
(22,'Ekran','6.4" Dynamic AMOLED 2X 120Hz'),(22,'İşlemci','Snapdragon 8 Gen 2'),(22,'RAM','8 GB'),(22,'Depolama','256 GB'),(22,'Batarya','4500 mAh'),(22,'Kamera','50 MP + 10 MP + 8 MP'),(22,'OS','Android 15 (One UI 7)'),(22,'5G','Evet'),(22,'Ağırlık','209 g'),(22,'USB','USB-C 3.2'),(22,'Şarj','25W Kablolu · 15W Kablosuz'),(22,'Su Geçirmezlik','IP68 (2m/30dk)'),(22,'WiFi','Wi-Fi 6E'),(22,'Bluetooth','5.3'),(22,'NFC','Evet');

-- Perf Samsung
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(11,98,98,92,84,98,99),(12,97,97,92,84,90,98),(13,97,97,92,75,88,97),
(14,94,93,90,84,96,98),(15,94,93,90,74,85,96),(16,94,93,90,72,82,94),
(17,52,48,64,84,72,80),(18,48,44,58,82,68,78),(19,28,24,38,82,50,60),
(20,56,52,66,82,72,78),(21,28,24,38,92,52,62),(22,88,86,80,78,88,92);

-- Stores Samsung
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(11,'Trendyol',74999,'https://trendyol.com'),(11,'Samsung TR',76999,'https://samsung.com/tr'),(11,'Hepsiburada',75500,'https://hepsiburada.com'),(11,'MediaMarkt',77000,'https://mediamarkt.com.tr'),
(12,'Trendyol',54999,'https://trendyol.com'),(12,'Samsung TR',55999,'https://samsung.com/tr'),(12,'Hepsiburada',55500,'https://hepsiburada.com'),
(13,'Trendyol',44999,'https://trendyol.com'),(13,'Samsung TR',45999,'https://samsung.com/tr'),(13,'Hepsiburada',45500,'https://hepsiburada.com'),
(14,'Trendyol',59999,'https://trendyol.com'),(14,'Samsung TR',61999,'https://samsung.com/tr'),(14,'MediaMarkt',62000,'https://mediamarkt.com.tr'),
(15,'Samsung TR',89999,'https://samsung.com/tr'),(15,'Trendyol',91000,'https://trendyol.com'),(15,'Hepsiburada',92500,'https://hepsiburada.com'),
(16,'Samsung TR',44999,'https://samsung.com/tr'),(16,'Trendyol',45999,'https://trendyol.com'),
(17,'Trendyol',17999,'https://trendyol.com'),(17,'Hepsiburada',18499,'https://hepsiburada.com'),(17,'N11',18200,'https://n11.com'),
(18,'Trendyol',12999,'https://trendyol.com'),(18,'Hepsiburada',13499,'https://hepsiburada.com'),
(19,'Trendyol',7999,'https://trendyol.com'),(19,'Hepsiburada',8299,'https://hepsiburada.com'),
(20,'Trendyol',14999,'https://trendyol.com'),(20,'Hepsiburada',15499,'https://hepsiburada.com'),
(21,'Trendyol',6999,'https://trendyol.com'),(21,'Hepsiburada',7299,'https://hepsiburada.com'),
(22,'Trendyol',19999,'https://trendyol.com'),(22,'Hepsiburada',20499,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- XIAOMI (10 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Xiaomi','Xiaomi 15 Ultra 512GB','https://i01.appmifile.com/webfile/globalimg/products/pc/xiaomi-15-ultra/xiaomi-15-ultra-kv.png',74999,79999,4.8,420,4,'new',6,2025,2350000,3100,9800,0.96,0.91,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Xiaomi','Xiaomi 14T Pro 512GB','https://i02.appmifile.com/mi-com-product/fly-birds/xiaomi-14t-pro/pc/header-img.png',34999,38999,4.6,1120,7,'new',10,2024,2050000,2970,9450,0.98,0.94,'MIL-STD-810H','IP68','Gorilla Glass 5'),
('Xiaomi','Xiaomi 14T 256GB','https://i02.appmifile.com/mi-com-product/fly-birds/xiaomi-14t/pc/header-img.png',24999,27999,4.5,880,6,'',11,2024,1650000,1920,6200,0.99,0.94,'MIL-STD-810H','IP68','Gorilla Glass 5'),
('Xiaomi','Redmi Note 13 Pro+ 256GB','https://i01.appmifile.com/webfile/globalimg/products/pc/redmi-note-13-pro-plus/specs-img.png',14999,17999,4.6,2100,8,'best',17,2024,720000,1180,3600,0.81,0.78,'Yok','IP68','Gorilla Glass Victus'),
('Xiaomi','Redmi Note 13 Pro 256GB','https://i01.appmifile.com/webfile/globalimg/products/pc/redmi-note-13-pro-plus/specs-img.png',12999,15499,4.5,3840,9,'best',16,2023,680000,1120,3400,0.77,0.75,'Yok','IP54','Gorilla Glass 5'),
('Xiaomi','Redmi Note 13 128GB','https://i01.appmifile.com/webfile/globalimg/products/pc/redmi-note-13/note13-kv-pc.png',7999,9999,4.4,4200,9,'',20,2024,420000,780,2200,0.84,0.80,'Yok','IP54','Gorilla Glass 3'),
('Xiaomi','Poco X6 Pro 256GB','https://i01.appmifile.com/webfile/globalimg/products/pc/poco-x6-pro/kv.png',16999,19999,4.6,1600,7,'hot',15,2024,1650000,1920,6200,0.97,0.92,'Yok','IP54','Gorilla Glass 5'),
('Xiaomi','Poco F6 256GB','https://i01.appmifile.com/webfile/globalimg/products/pc/poco-f6/kv.png',19999,22999,4.7,980,6,'hot',13,2024,1900000,2200,7100,1.01,0.95,'Yok','IP64','Gorilla Glass 5'),
('Xiaomi','Redmi 13C 128GB','https://i01.appmifile.com/webfile/globalimg/products/pc/redmi-13c/kv.png',4999,5999,4.2,5600,8,'',17,2024,220000,480,1400,0.86,0.82,'Yok','Yok','Corning Glass 3'),
('Xiaomi','Poco M6 Pro 256GB','https://i01.appmifile.com/webfile/globalimg/products/pc/poco-m6-pro/kv.png',9999,11999,4.4,2200,7,'',17,2024,580000,980,2800,0.92,0.87,'Yok','IP54','Gorilla Glass 5');

-- Specs Xiaomi
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(23,'Ekran','6.73" LTPO AMOLED 120Hz'),(23,'İşlemci','Snapdragon 8 Elite'),(23,'RAM','16 GB'),(23,'Depolama','512 GB'),(23,'Batarya','5000 mAh'),(23,'Kamera','50 MP + 200 MP + 50 MP'),(23,'OS','Android 15 (HyperOS 2)'),(23,'5G','Evet'),(23,'Ağırlık','226 g'),(23,'USB','USB-C 4.0'),(23,'Şarj','90W Kablolu · 80W Kablosuz'),(23,'Su Geçirmezlik','IP68'),(23,'WiFi','Wi-Fi 7'),(23,'Bluetooth','5.4'),(23,'NFC','Evet'),
(24,'Ekran','6.67" AMOLED 144Hz'),(24,'İşlemci','MediaTek Dimensity 9300+'),(24,'RAM','12 GB'),(24,'Depolama','512 GB'),(24,'Batarya','5000 mAh'),(24,'Kamera','50 MP + 50 MP + 12 MP'),(24,'OS','Android 14 (HyperOS)'),(24,'5G','Evet'),(24,'Ağırlık','209 g'),(24,'USB','USB-C 3.2'),(24,'Şarj','120W Kablolu · 50W Kablosuz'),(24,'Su Geçirmezlik','IP68'),(24,'WiFi','Wi-Fi 7'),(24,'Bluetooth','5.4'),(24,'NFC','Evet'),
(25,'Ekran','6.67" AMOLED 144Hz'),(25,'İşlemci','MediaTek Dimensity 8300-Ultra'),(25,'RAM','8 GB'),(25,'Depolama','256 GB'),(25,'Batarya','5000 mAh'),(25,'Kamera','50 MP + 50 MP + 12 MP'),(25,'OS','Android 14 (HyperOS)'),(25,'5G','Evet'),(25,'Ağırlık','193 g'),(25,'USB','USB-C 2.0'),(25,'Şarj','67W Kablolu · 30W Kablosuz'),(25,'Su Geçirmezlik','IP68'),(25,'WiFi','Wi-Fi 6E'),(25,'Bluetooth','5.3'),(25,'NFC','Evet'),
(26,'Ekran','6.67" AMOLED 120Hz'),(26,'İşlemci','MediaTek Dimensity 7200-Ultra'),(26,'RAM','8 GB'),(26,'Depolama','256 GB'),(26,'Batarya','5000 mAh'),(26,'Kamera','200 MP + 8 MP + 2 MP'),(26,'OS','Android 14 (HyperOS)'),(26,'5G','Evet'),(26,'Ağırlık','204 g'),(26,'USB','USB-C 2.0'),(26,'Şarj','120W Kablolu'),(26,'Su Geçirmezlik','IP68'),(26,'WiFi','Wi-Fi 6E'),(26,'Bluetooth','5.3'),(26,'NFC','Evet'),
(27,'Ekran','6.67" AMOLED 120Hz'),(27,'İşlemci','Snapdragon 7s Gen 2'),(27,'RAM','8 GB'),(27,'Depolama','256 GB'),(27,'Batarya','5100 mAh'),(27,'Kamera','200 MP + 8 MP + 2 MP'),(27,'OS','Android 13 (MIUI 14)'),(27,'5G','Evet'),(27,'Ağırlık','187 g'),(27,'USB','USB-C 2.0'),(27,'Şarj','67W Kablolu'),(27,'Su Geçirmezlik','IP54'),(27,'WiFi','Wi-Fi 5'),(27,'Bluetooth','5.2'),(27,'NFC','Evet'),
(28,'Ekran','6.67" AMOLED 120Hz'),(28,'İşlemci','Snapdragon 685'),(28,'RAM','6 GB'),(28,'Depolama','128 GB'),(28,'Batarya','5000 mAh'),(28,'Kamera','108 MP + 8 MP + 2 MP'),(28,'OS','Android 13 (MIUI 14)'),(28,'5G','Hayır'),(28,'Ağırlık','188 g'),(28,'USB','USB-C 2.0'),(28,'Şarj','33W Kablolu'),(28,'Su Geçirmezlik','IP54'),(28,'WiFi','Wi-Fi 5'),(28,'Bluetooth','5.3'),(28,'NFC','Hayır'),
(29,'Ekran','6.67" AMOLED 120Hz'),(29,'İşlemci','MediaTek Dimensity 8300-Ultra'),(29,'RAM','8 GB'),(29,'Depolama','256 GB'),(29,'Batarya','5000 mAh'),(29,'Kamera','64 MP + 8 MP + 2 MP'),(29,'OS','Android 14 (HyperOS)'),(29,'5G','Evet'),(29,'Ağırlık','186 g'),(29,'USB','USB-C 2.0'),(29,'Şarj','67W Kablolu'),(29,'Su Geçirmezlik','IP54'),(29,'WiFi','Wi-Fi 6E'),(29,'Bluetooth','5.4'),(29,'NFC','Evet'),
(30,'Ekran','6.67" AMOLED 120Hz'),(30,'İşlemci','Snapdragon 8s Gen 3'),(30,'RAM','12 GB'),(30,'Depolama','256 GB'),(30,'Batarya','4500 mAh'),(30,'Kamera','50 MP + 8 MP + 2 MP'),(30,'OS','Android 14 (HyperOS)'),(30,'5G','Evet'),(30,'Ağırlık','179 g'),(30,'USB','USB-C 2.0'),(30,'Şarj','90W Kablolu'),(30,'Su Geçirmezlik','IP64'),(30,'WiFi','Wi-Fi 7'),(30,'Bluetooth','5.4'),(30,'NFC','Evet'),
(31,'Ekran','6.74" IPS LCD 90Hz'),(31,'İşlemci','MediaTek Helio G85'),(31,'RAM','6 GB'),(31,'Depolama','128 GB'),(31,'Batarya','5000 mAh'),(31,'Kamera','50 MP + 2 MP + 0.08 MP'),(31,'OS','Android 13 (MIUI 14)'),(31,'5G','Hayır'),(31,'Ağırlık','192 g'),(31,'USB','USB-C 2.0'),(31,'Şarj','18W Kablolu'),(31,'Su Geçirmezlik','Yok'),(31,'WiFi','Wi-Fi 5'),(31,'Bluetooth','5.3'),(31,'NFC','Hayır'),
(32,'Ekran','6.67" AMOLED 120Hz'),(32,'İşlemci','MediaTek Dimensity 7025-Ultra'),(32,'RAM','8 GB'),(32,'Depolama','256 GB'),(32,'Batarya','5000 mAh'),(32,'Kamera','64 MP + 8 MP + 2 MP'),(32,'OS','Android 14 (HyperOS)'),(32,'5G','Evet'),(32,'Ağırlık','179 g'),(32,'USB','USB-C 2.0'),(32,'Şarj','67W Kablolu'),(32,'Su Geçirmezlik','IP54'),(32,'WiFi','Wi-Fi 6'),(32,'Bluetooth','5.4'),(32,'NFC','Evet');

-- Perf Xiaomi
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(23,99,99,96,84,98,96),(24,96,97,90,84,90,92),(25,84,82,78,82,86,88),
(26,68,64,72,84,88,82),(27,55,52,62,86,82,78),(28,38,34,48,82,72,72),
(29,84,82,80,82,72,86),(30,92,90,86,78,74,88),(31,18,16,28,78,52,48),(32,62,58,68,80,68,80);

-- Stores Xiaomi
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(23,'Trendyol',74999,'https://trendyol.com'),(23,'Mi Türkiye',76999,'https://mi.com/tr'),
(24,'Trendyol',34999,'https://trendyol.com'),(24,'Hepsiburada',35999,'https://hepsiburada.com'),(24,'Mi Türkiye',36500,'https://mi.com/tr'),
(25,'Trendyol',24999,'https://trendyol.com'),(25,'Hepsiburada',25999,'https://hepsiburada.com'),
(26,'Trendyol',14999,'https://trendyol.com'),(26,'Hepsiburada',15499,'https://hepsiburada.com'),
(27,'Trendyol',12999,'https://trendyol.com'),(27,'N11',13299,'https://n11.com'),(27,'Hepsiburada',13499,'https://hepsiburada.com'),
(28,'Trendyol',7999,'https://trendyol.com'),(28,'Hepsiburada',8299,'https://hepsiburada.com'),
(29,'Trendyol',16999,'https://trendyol.com'),(29,'Hepsiburada',17499,'https://hepsiburada.com'),
(30,'Trendyol',19999,'https://trendyol.com'),(30,'Hepsiburada',20499,'https://hepsiburada.com'),
(31,'Trendyol',4999,'https://trendyol.com'),(31,'N11',5199,'https://n11.com'),
(32,'Trendyol',9999,'https://trendyol.com'),(32,'Hepsiburada',10499,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- GOOGLE PIXEL (6 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Google','Pixel 9 Pro XL 256GB','https://lh3.googleusercontent.com/g0K9W5M36M8iJFOt_bQ4SFcJBqJnMQAqQIoRPLG4oqXTCuJEjjxEbcjpwSAHMbVf',54999,59999,4.8,620,4,'new',8,2024,1680000,2010,6100,1.12,0.96,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Google','Pixel 9 Pro 256GB','https://lh3.googleusercontent.com/6AhNkCT04_dOTVKmUvYajMkYCX3UyFBzGKAHRDzULsKJfSyQW2t8J0j_i_Y',49999,54999,4.8,870,4,'new',9,2024,1620000,1920,5800,1.19,0.98,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Google','Pixel 9 128GB','https://lh3.googleusercontent.com/pixel9-standard',39999,44999,4.7,740,4,'',11,2024,1580000,1880,5700,1.15,0.94,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Google','Pixel 8 Pro 128GB','https://lh3.googleusercontent.com/pixel8pro',34999,44999,4.7,1200,4,'best',22,2023,1200000,1680,4800,1.21,1.00,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Google','Pixel 8a 128GB','https://lh3.googleusercontent.com/pixel8a',29999,34999,4.6,890,4,'',14,2024,1150000,1640,4700,1.18,0.98,'MIL-STD-810H','IP67','Gorilla Glass 3'),
('Google','Pixel 7a 128GB','https://lh3.googleusercontent.com/pixel7a',22999,28999,4.5,1400,4,'best',21,2023,980000,1440,4200,1.22,1.01,'MIL-STD-810H','IP67','Gorilla Glass 3');

-- Specs Google
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(33,'Ekran','6.8" LTPO OLED 120Hz'),(33,'İşlemci','Google Tensor G4'),(33,'RAM','16 GB'),(33,'Depolama','256 GB'),(33,'Batarya','5060 mAh'),(33,'Kamera','50 MP + 48 MP + 48 MP'),(33,'OS','Android 15'),(33,'5G','Evet'),(33,'Ağırlık','221 g'),(33,'USB','USB-C 3.2'),(33,'Şarj','37W Kablolu · 23W Kablosuz'),(33,'Su Geçirmezlik','IP68 (2m/30dk)'),(33,'WiFi','Wi-Fi 7'),(33,'Bluetooth','5.3'),(33,'NFC','Evet'),
(34,'Ekran','6.3" LTPO OLED 120Hz'),(34,'İşlemci','Google Tensor G4'),(34,'RAM','16 GB'),(34,'Depolama','256 GB'),(34,'Batarya','4700 mAh'),(34,'Kamera','50 MP + 48 MP + 48 MP'),(34,'OS','Android 15'),(34,'5G','Evet'),(34,'Ağırlık','199 g'),(34,'USB','USB-C 3.2'),(34,'Şarj','27W Kablolu · 23W Kablosuz'),(34,'Su Geçirmezlik','IP68 (2m/30dk)'),(34,'WiFi','Wi-Fi 7'),(34,'Bluetooth','5.3'),(34,'NFC','Evet'),
(35,'Ekran','6.3" OLED 120Hz'),(35,'İşlemci','Google Tensor G4'),(35,'RAM','12 GB'),(35,'Depolama','128 GB'),(35,'Batarya','4700 mAh'),(35,'Kamera','50 MP + 48 MP'),(35,'OS','Android 15'),(35,'5G','Evet'),(35,'Ağırlık','198 g'),(35,'USB','USB-C 3.2'),(35,'Şarj','27W Kablolu · 21W Kablosuz'),(35,'Su Geçirmezlik','IP68 (2m/30dk)'),(35,'WiFi','Wi-Fi 7'),(35,'Bluetooth','5.3'),(35,'NFC','Evet'),
(36,'Ekran','6.7" LTPO OLED 120Hz'),(36,'İşlemci','Google Tensor G3'),(36,'RAM','12 GB'),(36,'Depolama','128 GB'),(36,'Batarya','5050 mAh'),(36,'Kamera','50 MP + 48 MP + 48 MP'),(36,'OS','Android 15'),(36,'5G','Evet'),(36,'Ağırlık','213 g'),(36,'USB','USB-C 3.2'),(36,'Şarj','30W Kablolu · 23W Kablosuz'),(36,'Su Geçirmezlik','IP68 (2m/30dk)'),(36,'WiFi','Wi-Fi 6E'),(36,'Bluetooth','5.3'),(36,'NFC','Evet'),
(37,'Ekran','6.1" OLED 120Hz'),(37,'İşlemci','Google Tensor G3'),(37,'RAM','8 GB'),(37,'Depolama','128 GB'),(37,'Batarya','4492 mAh'),(37,'Kamera','64 MP + 13 MP'),(37,'OS','Android 15'),(37,'5G','Evet'),(37,'Ağırlık','188 g'),(37,'USB','USB-C 3.2'),(37,'Şarj','18W Kablolu · 18W Kablosuz'),(37,'Su Geçirmezlik','IP67 (1m/30dk)'),(37,'WiFi','Wi-Fi 6E'),(37,'Bluetooth','5.3'),(37,'NFC','Evet'),
(38,'Ekran','6.1" OLED 90Hz'),(38,'İşlemci','Google Tensor G2'),(38,'RAM','8 GB'),(38,'Depolama','128 GB'),(38,'Batarya','4385 mAh'),(38,'Kamera','64 MP + 13 MP'),(38,'OS','Android 15'),(38,'5G','Evet'),(38,'Ağırlık','193 g'),(38,'USB','USB-C 3.0'),(38,'Şarj','18W Kablolu · 12W Kablosuz'),(38,'Su Geçirmezlik','IP67 (1m/30dk)'),(38,'WiFi','Wi-Fi 6E'),(38,'Bluetooth','5.3'),(38,'NFC','Evet');

-- Perf Google
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(33,84,82,96,82,99,94),(34,82,80,94,80,98,92),(35,80,78,88,80,96,90),
(36,78,76,88,82,97,92),(37,76,74,80,76,90,84),(38,72,70,76,74,86,80);

-- Stores Google
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(33,'Trendyol',54999,'https://trendyol.com'),(33,'Hepsiburada',56000,'https://hepsiburada.com'),
(34,'Trendyol',49999,'https://trendyol.com'),(34,'Hepsiburada',51000,'https://hepsiburada.com'),(34,'Amazon TR',50500,'https://amazon.com.tr'),
(35,'Trendyol',39999,'https://trendyol.com'),(35,'Hepsiburada',41000,'https://hepsiburada.com'),
(36,'Trendyol',34999,'https://trendyol.com'),(36,'Hepsiburada',35999,'https://hepsiburada.com'),
(37,'Trendyol',29999,'https://trendyol.com'),(37,'Hepsiburada',30999,'https://hepsiburada.com'),
(38,'Trendyol',22999,'https://trendyol.com'),(38,'Hepsiburada',23999,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- ONEPLUS (5 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('OnePlus','OnePlus 13 512GB','https://oasis.opstatics.com/content/dam/oasis/page/2025/global/oneplus-13/spec/Silver.png',38999,42999,4.7,680,5,'hot',9,2025,2180000,2990,9620,1.14,1.02,'MIL-STD-810H','IP65','Ceramic Shield'),
('OnePlus','OnePlus 12 256GB','https://oasis.opstatics.com/content/dam/oasis/page/2024/global/oneplus-12/kv.png',29999,34999,4.7,1200,5,'best',14,2024,1980000,2310,7250,1.10,0.98,'MIL-STD-810H','IP65','Gorilla Glass Victus 2'),
('OnePlus','OnePlus Nord 4 256GB','https://oasis.opstatics.com/content/dam/oasis/page/2024/global/nord4/kv.png',19999,22999,4.5,820,5,'new',13,2024,1650000,1920,6200,1.02,0.96,'Yok','IP65','Gorilla Glass 5'),
('OnePlus','OnePlus Nord CE4 128GB','https://oasis.opstatics.com/content/dam/oasis/page/2024/global/nordce4/kv.png',12999,14999,4.4,640,4,'',13,2024,680000,1120,3400,0.98,0.92,'Yok','IP54','Gorilla Glass 5'),
('OnePlus','OnePlus Open 512GB','https://oasis.opstatics.com/content/dam/oasis/page/2024/global/oneplus-open/kv.png',64999,74999,4.6,380,4,'',13,2024,1950000,2300,7200,1.32,1.10,'Yok','IPX4','Gorilla Glass Victus 2');

-- Specs OnePlus
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(39,'Ekran','6.82" LTPO AMOLED 120Hz'),(39,'İşlemci','Snapdragon 8 Elite'),(39,'RAM','16 GB'),(39,'Depolama','512 GB'),(39,'Batarya','6000 mAh'),(39,'Kamera','50 MP + 50 MP + 50 MP'),(39,'OS','Android 15 (OxygenOS 15)'),(39,'5G','Evet'),(39,'Ağırlık','210 g'),(39,'USB','USB-C 3.2'),(39,'Şarj','100W Kablolu · 50W Kablosuz'),(39,'Su Geçirmezlik','IP65'),(39,'WiFi','Wi-Fi 7'),(39,'Bluetooth','5.4'),(39,'NFC','Evet'),
(40,'Ekran','6.82" LTPO AMOLED 120Hz'),(40,'İşlemci','Snapdragon 8 Gen 3'),(40,'RAM','12 GB'),(40,'Depolama','256 GB'),(40,'Batarya','5400 mAh'),(40,'Kamera','50 MP + 64 MP + 48 MP'),(40,'OS','Android 15 (OxygenOS 15)'),(40,'5G','Evet'),(40,'Ağırlık','220 g'),(40,'USB','USB-C 3.0'),(40,'Şarj','100W Kablolu · 50W Kablosuz'),(40,'Su Geçirmezlik','IP65'),(40,'WiFi','Wi-Fi 7'),(40,'Bluetooth','5.4'),(40,'NFC','Evet'),
(41,'Ekran','6.74" AMOLED 120Hz'),(41,'İşlemci','Snapdragon 7+ Gen 3'),(41,'RAM','12 GB'),(41,'Depolama','256 GB'),(41,'Batarya','5500 mAh'),(41,'Kamera','50 MP + 8 MP'),(41,'OS','Android 14 (OxygenOS 14)'),(41,'5G','Evet'),(41,'Ağırlık','199 g'),(41,'USB','USB-C 2.0'),(41,'Şarj','100W Kablolu'),(41,'Su Geçirmezlik','IP65'),(41,'WiFi','Wi-Fi 7'),(41,'Bluetooth','5.4'),(41,'NFC','Evet'),
(42,'Ekran','6.7" AMOLED 120Hz'),(42,'İşlemci','Snapdragon 7s Gen 2'),(42,'RAM','8 GB'),(42,'Depolama','128 GB'),(42,'Batarya','5500 mAh'),(42,'Kamera','50 MP + 8 MP + 2 MP'),(42,'OS','Android 14 (OxygenOS 14)'),(42,'5G','Evet'),(42,'Ağırlık','183 g'),(42,'USB','USB-C 2.0'),(42,'Şarj','67W Kablolu'),(42,'Su Geçirmezlik','IP54'),(42,'WiFi','Wi-Fi 6'),(42,'Bluetooth','5.3'),(42,'NFC','Evet'),
(43,'Ekran','7.82" LTPO2 AMOLED 120Hz (iç)'),(43,'İşlemci','Snapdragon 8 Gen 3'),(43,'RAM','16 GB'),(43,'Depolama','512 GB'),(43,'Batarya','4805 mAh'),(43,'Kamera','48 MP + 48 MP + 48 MP'),(43,'OS','Android 15 (OxygenOS 15)'),(43,'5G','Evet'),(43,'Ağırlık','245 g'),(43,'USB','USB-C 3.2'),(43,'Şarj','67W Kablolu · 15W Kablosuz'),(43,'Su Geçirmezlik','IPX4'),(43,'WiFi','Wi-Fi 7'),(43,'Bluetooth','5.3'),(43,'NFC','Evet');

-- Perf OnePlus
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(39,99,99,95,94,86,95),(40,94,93,90,90,88,94),(41,88,86,86,90,78,88),
(42,55,52,68,88,72,82),(43,94,93,90,78,88,96);

-- Stores OnePlus
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(39,'Trendyol',38999,'https://trendyol.com'),(39,'Hepsiburada',39999,'https://hepsiburada.com'),(39,'Amazon TR',40500,'https://amazon.com.tr'),
(40,'Trendyol',29999,'https://trendyol.com'),(40,'Hepsiburada',30999,'https://hepsiburada.com'),
(41,'Trendyol',19999,'https://trendyol.com'),(41,'Hepsiburada',20999,'https://hepsiburada.com'),
(42,'Trendyol',12999,'https://trendyol.com'),(42,'Hepsiburada',13499,'https://hepsiburada.com'),
(43,'Trendyol',64999,'https://trendyol.com'),(43,'Hepsiburada',66999,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- SONY (4 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Sony','Xperia 1 VI 256GB','https://www.sony.com.tr/image/5d02da5df552836db8bb2a64f41ad44f?fmt=pjpeg&wid=330',44999,49999,4.5,540,5,'',10,2024,1880000,2310,7250,0.87,0.85,'MIL-STD-810H','IP65/68','Gorilla Glass Victus 2'),
('Sony','Xperia 5 VI 128GB','https://www.sony.com.tr/image/xperia5vi',34999,39999,4.4,380,4,'',13,2024,1880000,2310,7250,0.92,0.88,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Sony','Xperia 10 VI 128GB','https://www.sony.com.tr/image/xperia10vi',19999,23999,4.3,420,4,'',17,2024,580000,980,2800,0.88,0.84,'Yok','IP68','Gorilla Glass Victus'),
('Sony','Xperia 1 V 256GB','https://www.sony.com.tr/image/xperia1v',34999,44999,4.5,620,4,'best',22,2023,1500000,1960,5200,0.89,0.86,'MIL-STD-810H','IP68','Gorilla Glass Victus 2');

-- Specs Sony
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(44,'Ekran','6.5" 4K OLED 120Hz'),(44,'İşlemci','Snapdragon 8 Gen 3'),(44,'RAM','12 GB'),(44,'Depolama','256 GB'),(44,'Batarya','5000 mAh'),(44,'Kamera','52 MP + 12 MP + 12 MP'),(44,'OS','Android 14'),(44,'5G','Evet'),(44,'Ağırlık','192 g'),(44,'USB','USB-C 3.2'),(44,'Şarj','30W Kablolu · 15W Kablosuz'),(44,'Su Geçirmezlik','IP65/68'),(44,'WiFi','Wi-Fi 7'),(44,'Bluetooth','5.4'),(44,'NFC','Evet'),
(45,'Ekran','6.1" 4K OLED 120Hz'),(45,'İşlemci','Snapdragon 8 Gen 3'),(45,'RAM','8 GB'),(45,'Depolama','128 GB'),(45,'Batarya','4000 mAh'),(45,'Kamera','52 MP + 12 MP + 12 MP'),(45,'OS','Android 14'),(45,'5G','Evet'),(45,'Ağırlık','167 g'),(45,'USB','USB-C 3.2'),(45,'Şarj','30W Kablolu · 15W Kablosuz'),(45,'Su Geçirmezlik','IP68'),(45,'WiFi','Wi-Fi 7'),(45,'Bluetooth','5.4'),(45,'NFC','Evet'),
(46,'Ekran','6.1" OLED 60Hz'),(46,'İşlemci','Snapdragon 6 Gen 1'),(46,'RAM','6 GB'),(46,'Depolama','128 GB'),(46,'Batarya','5000 mAh'),(46,'Kamera','48 MP + 12 MP'),(46,'OS','Android 14'),(46,'5G','Evet'),(46,'Ağırlık','164 g'),(46,'USB','USB-C 2.0'),(46,'Şarj','30W Kablolu'),(46,'Su Geçirmezlik','IP68'),(46,'WiFi','Wi-Fi 6'),(46,'Bluetooth','5.4'),(46,'NFC','Evet'),
(47,'Ekran','6.5" 4K OLED 120Hz'),(47,'İşlemci','Snapdragon 8 Gen 2'),(47,'RAM','12 GB'),(47,'Depolama','256 GB'),(47,'Batarya','5000 mAh'),(47,'Kamera','52 MP + 12 MP + 12 MP'),(47,'OS','Android 14'),(47,'5G','Evet'),(47,'Ağırlık','187 g'),(47,'USB','USB-C 3.2'),(47,'Şarj','30W Kablolu · 15W Kablosuz'),(47,'Su Geçirmezlik','IP68'),(47,'WiFi','Wi-Fi 6E'),(47,'Bluetooth','5.3'),(47,'NFC','Evet');

-- Perf Sony
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(44,92,91,88,84,88,99),(45,92,91,80,72,88,99),(46,58,54,62,82,74,80),(47,88,87,86,84,86,98);

-- Stores Sony
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(44,'Trendyol',44999,'https://trendyol.com'),(44,'Hepsiburada',46500,'https://hepsiburada.com'),(44,'Amazon TR',45999,'https://amazon.com.tr'),
(45,'Trendyol',34999,'https://trendyol.com'),(45,'Hepsiburada',35999,'https://hepsiburada.com'),
(46,'Trendyol',19999,'https://trendyol.com'),(46,'Hepsiburada',20999,'https://hepsiburada.com'),
(47,'Trendyol',34999,'https://trendyol.com'),(47,'Hepsiburada',35999,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- MOTOROLA (4 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Motorola','Motorola Edge 50 Pro 256GB','https://motorola-global-portal-stg.s3.amazonaws.com/us/pdp-images/motorola-edge-50-pro.png',15999,18999,4.4,920,6,'',16,2024,690000,1140,3480,1.08,0.99,'MIL-STD-810H','IP68','Gorilla Glass 5'),
('Motorola','Motorola Edge 50 Ultra 512GB','https://motorola-global-portal-stg.s3.amazonaws.com/us/pdp-images/motorola-edge-50-ultra.png',29999,34999,4.6,540,5,'',14,2024,1680000,1920,6200,1.04,0.96,'MIL-STD-810H','IP68','Gorilla Glass Victus'),
('Motorola','Moto G85 256GB','https://motorola-global-portal-stg.s3.amazonaws.com/us/pdp-images/moto-g85.png',9999,11999,4.3,1200,6,'',17,2024,620000,1080,3200,0.96,0.90,'Yok','IP52','Gorilla Glass 5'),
('Motorola','Moto G54 5G 256GB','https://motorola-global-portal-stg.s3.amazonaws.com/us/pdp-images/moto-g54.png',7499,8999,4.2,1800,6,'',17,2024,480000,880,2400,0.92,0.86,'Yok','IP52','Gorilla Glass 3');

-- Specs Motorola
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(48,'Ekran','6.7" pOLED 144Hz'),(48,'İşlemci','Snapdragon 7s Gen 2'),(48,'RAM','12 GB'),(48,'Depolama','256 GB'),(48,'Batarya','4500 mAh'),(48,'Kamera','50 MP + 10 MP + 13 MP'),(48,'OS','Android 14'),(48,'5G','Evet'),(48,'Ağırlık','186 g'),(48,'USB','USB-C 2.0'),(48,'Şarj','68W Kablolu · 15W Kablosuz'),(48,'Su Geçirmezlik','IP68'),(48,'WiFi','Wi-Fi 6E'),(48,'Bluetooth','5.3'),(48,'NFC','Evet'),
(49,'Ekran','6.7" pOLED 165Hz'),(49,'İşlemci','Snapdragon 8s Gen 3'),(49,'RAM','12 GB'),(49,'Depolama','512 GB'),(49,'Batarya','4500 mAh'),(49,'Kamera','50 MP + 50 MP + 10 MP'),(49,'OS','Android 14'),(49,'5G','Evet'),(49,'Ağırlık','185 g'),(49,'USB','USB-C 3.2'),(49,'Şarj','125W Kablolu · 50W Kablosuz'),(49,'Su Geçirmezlik','IP68'),(49,'WiFi','Wi-Fi 7'),(49,'Bluetooth','5.4'),(49,'NFC','Evet'),
(50,'Ekran','6.67" pOLED 120Hz'),(50,'İşlemci','Snapdragon 6s Gen 3'),(50,'RAM','8 GB'),(50,'Depolama','256 GB'),(50,'Batarya','5000 mAh'),(50,'Kamera','50 MP + 8 MP'),(50,'OS','Android 14'),(50,'5G','Hayır'),(50,'Ağırlık','175 g'),(50,'USB','USB-C 2.0'),(50,'Şarj','33W Kablolu'),(50,'Su Geçirmezlik','IP52'),(50,'WiFi','Wi-Fi 5'),(50,'Bluetooth','5.1'),(50,'NFC','Evet'),
(51,'Ekran','6.5" IPS LCD 120Hz'),(51,'İşlemci','MediaTek Dimensity 7020'),(51,'RAM','8 GB'),(51,'Depolama','256 GB'),(51,'Batarya','5000 mAh'),(51,'Kamera','50 MP + 2 MP'),(51,'OS','Android 14'),(51,'5G','Evet'),(51,'Ağırlık','181 g'),(51,'USB','USB-C 2.0'),(51,'Şarj','33W Kablolu'),(51,'Su Geçirmezlik','IP52'),(51,'WiFi','Wi-Fi 5'),(51,'Bluetooth','5.1'),(51,'NFC','Evet');

-- Perf Motorola
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(48,56,54,74,78,74,84),(49,90,88,86,78,82,90),(50,44,40,60,80,64,78),(51,36,32,52,78,56,68);

-- Stores Motorola
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(48,'Trendyol',15999,'https://trendyol.com'),(48,'Hepsiburada',16500,'https://hepsiburada.com'),
(49,'Trendyol',29999,'https://trendyol.com'),(49,'Hepsiburada',30999,'https://hepsiburada.com'),
(50,'Trendyol',9999,'https://trendyol.com'),(50,'Hepsiburada',10499,'https://hepsiburada.com'),
(51,'Trendyol',7499,'https://trendyol.com'),(51,'Hepsiburada',7799,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- OPPO (4 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('OPPO','OPPO Find X8 Pro 256GB','https://image.oppo.com/content/dam/oppo/product-asset-library/find-x8-pro/kv.png',49999,54999,4.7,420,4,'new',9,2024,2100000,2950,9600,1.02,0.94,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('OPPO','OPPO Reno 12 Pro 256GB','https://image.oppo.com/content/dam/oppo/product-asset-library/reno12-pro/kv.png',19999,22999,4.5,680,5,'',13,2024,680000,1120,3400,0.98,0.92,'Yok','IP65','Gorilla Glass 7i'),
('OPPO','OPPO A3 Pro 256GB','https://image.oppo.com/content/dam/oppo/product-asset-library/a3-pro/kv.png',11999,13999,4.3,540,5,'',14,2024,520000,920,2600,0.94,0.88,'Yok','IP65','Gorilla Glass 5'),
('OPPO','OPPO A60 128GB','https://image.oppo.com/content/dam/oppo/product-asset-library/a60/kv.png',6999,7999,4.2,880,5,'',13,2024,320000,580,1600,0.90,0.84,'Yok','IP54','Gorilla Glass 3');

-- Specs OPPO
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(52,'Ekran','6.78" LTPO AMOLED 120Hz'),(52,'İşlemci','MediaTek Dimensity 9300+'),(52,'RAM','16 GB'),(52,'Depolama','256 GB'),(52,'Batarya','5910 mAh'),(52,'Kamera','50 MP + 50 MP + 3x zoom'),(52,'OS','Android 15 (ColorOS 15)'),(52,'5G','Evet'),(52,'Ağırlık','218 g'),(52,'USB','USB-C 3.2'),(52,'Şarj','80W Kablolu · 50W Kablosuz'),(52,'Su Geçirmezlik','IP68'),(52,'WiFi','Wi-Fi 7'),(52,'Bluetooth','5.4'),(52,'NFC','Evet'),
(53,'Ekran','6.7" AMOLED 120Hz'),(53,'İşlemci','MediaTek Dimensity 7300-Energy'),(53,'RAM','12 GB'),(53,'Depolama','256 GB'),(53,'Batarya','5000 mAh'),(53,'Kamera','50 MP + 50 MP'),(53,'OS','Android 14 (ColorOS 14)'),(53,'5G','Evet'),(53,'Ağırlık','180 g'),(53,'USB','USB-C 2.0'),(53,'Şarj','80W Kablolu'),(53,'Su Geçirmezlik','IP65'),(53,'WiFi','Wi-Fi 6E'),(53,'Bluetooth','5.4'),(53,'NFC','Evet'),
(54,'Ekran','6.67" AMOLED 120Hz'),(54,'İşlemci','MediaTek Dimensity 7050'),(54,'RAM','8 GB'),(54,'Depolama','256 GB'),(54,'Batarya','5100 mAh'),(54,'Kamera','64 MP + 2 MP'),(54,'OS','Android 14 (ColorOS 14)'),(54,'5G','Evet'),(54,'Ağırlık','186 g'),(54,'USB','USB-C 2.0'),(54,'Şarj','67W Kablolu'),(54,'Su Geçirmezlik','IP65'),(54,'WiFi','Wi-Fi 6'),(54,'Bluetooth','5.3'),(54,'NFC','Evet'),
(55,'Ekran','6.67" LCD 90Hz'),(55,'İşlemci','Snapdragon 680'),(55,'RAM','6 GB'),(55,'Depolama','128 GB'),(55,'Batarya','5000 mAh'),(55,'Kamera','50 MP + 2 MP'),(55,'OS','Android 14 (ColorOS 14)'),(55,'5G','Hayır'),(55,'Ağırlık','186 g'),(55,'USB','USB-C 2.0'),(55,'Şarj','33W Kablolu'),(55,'Su Geçirmezlik','IP54'),(55,'WiFi','Wi-Fi 5'),(55,'Bluetooth','5.0'),(55,'NFC','Hayır');

-- Perf OPPO
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(52,96,97,94,90,90,94),(53,62,58,78,82,78,84),(54,50,46,64,82,68,78),(55,32,28,44,78,56,58);

-- Stores OPPO
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(52,'Trendyol',49999,'https://trendyol.com'),(52,'Hepsiburada',50999,'https://hepsiburada.com'),
(53,'Trendyol',19999,'https://trendyol.com'),(53,'Hepsiburada',20499,'https://hepsiburada.com'),
(54,'Trendyol',11999,'https://trendyol.com'),(54,'Hepsiburada',12499,'https://hepsiburada.com'),
(55,'Trendyol',6999,'https://trendyol.com'),(55,'Hepsiburada',7299,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- HUAWEI (4 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Huawei','Huawei Pura 70 Pro 256GB','https://consumer.huawei.com/content/dam/huawei-cbg-site/tr/mkt/pdp/phones/pura-70-pro/kv.jpg',49999,54999,4.6,380,4,'new',9,2024,900000,1200,3800,0.94,0.88,'MIL-STD-810H','IP68','Kunlun Glass 2'),
('Huawei','Huawei Nova 12 Pro 256GB','https://consumer.huawei.com/content/dam/huawei-cbg-site/tr/mkt/pdp/phones/nova-12-pro/kv.jpg',24999,28999,4.4,540,4,'',14,2024,680000,980,2800,0.92,0.86,'Yok','IP60','Gorilla Glass 5'),
('Huawei','Huawei Mate 60 Pro 256GB','https://consumer.huawei.com/content/dam/huawei-cbg-site/tr/mkt/pdp/phones/mate60-pro/kv.jpg',44999,49999,4.6,620,4,'',10,2023,850000,1150,3500,0.96,0.90,'MIL-STD-810H','IP68','Kunlun Glass 2'),
('Huawei','Huawei Nova 11i 128GB','https://consumer.huawei.com/content/dam/huawei-cbg-site/tr/mkt/pdp/phones/nova-11i/kv.jpg',8999,10999,4.1,980,4,'',18,2023,280000,520,1400,0.88,0.82,'Yok','IP53','Yok');

-- Specs Huawei
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(56,'Ekran','6.8" LTPO OLED 120Hz'),(56,'İşlemci','Kirin 9010'),(56,'RAM','12 GB'),(56,'Depolama','256 GB'),(56,'Batarya','5050 mAh'),(56,'Kamera','50 MP + 48 MP + 40 MP'),(56,'OS','HarmonyOS 4'),(56,'5G','Evet'),(56,'Ağırlık','220 g'),(56,'USB','USB-C 3.1'),(56,'Şarj','100W Kablolu · 80W Kablosuz'),(56,'Su Geçirmezlik','IP68'),(56,'WiFi','Wi-Fi 6E'),(56,'Bluetooth','5.2'),(56,'NFC','Evet'),
(57,'Ekran','6.76" OLED 120Hz'),(57,'İşlemci','Snapdragon 778G'),(57,'RAM','8 GB'),(57,'Depolama','256 GB'),(57,'Batarya','4600 mAh'),(57,'Kamera','60 MP + 8 MP'),(57,'OS','HarmonyOS 4'),(57,'5G','Hayır'),(57,'Ağırlık','185 g'),(57,'USB','USB-C 2.0'),(57,'Şarj','100W Kablolu'),(57,'Su Geçirmezlik','IP60'),(57,'WiFi','Wi-Fi 6'),(57,'Bluetooth','5.2'),(57,'NFC','Evet'),
(58,'Ekran','6.82" LTPO OLED 120Hz'),(58,'İşlemci','Kirin 9000s'),(58,'RAM','12 GB'),(58,'Depolama','256 GB'),(58,'Batarya','5000 mAh'),(58,'Kamera','50 MP + 48 MP + 13 MP'),(58,'OS','HarmonyOS 4'),(58,'5G','Evet'),(58,'Ağırlık','225 g'),(58,'USB','USB-C 3.1'),(58,'Şarj','66W Kablolu · 50W Kablosuz'),(58,'Su Geçirmezlik','IP68'),(58,'WiFi','Wi-Fi 6E'),(58,'Bluetooth','5.2'),(58,'NFC','Evet'),
(59,'Ekran','6.8" IPS LCD 90Hz'),(59,'İşlemci','MediaTek Helio G85'),(59,'RAM','8 GB'),(59,'Depolama','128 GB'),(59,'Batarya','4000 mAh'),(59,'Kamera','48 MP + 2 MP'),(59,'OS','HarmonyOS 4'),(59,'5G','Hayır'),(59,'Ağırlık','191 g'),(59,'USB','USB-C 2.0'),(59,'Şarj','22.5W Kablolu'),(59,'Su Geçirmezlik','IP53'),(59,'WiFi','Wi-Fi 5'),(59,'Bluetooth','5.0'),(59,'NFC','Hayır');

-- Perf Huawei
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(56,78,74,86,84,94,92),(57,52,48,66,78,78,82),(58,74,70,84,82,90,90),(59,22,18,44,70,54,56);

-- Stores Huawei
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(56,'Trendyol',49999,'https://trendyol.com'),(56,'Hepsiburada',50999,'https://hepsiburada.com'),
(57,'Trendyol',24999,'https://trendyol.com'),(57,'Hepsiburada',25499,'https://hepsiburada.com'),
(58,'Trendyol',44999,'https://trendyol.com'),(58,'Hepsiburada',45999,'https://hepsiburada.com'),
(59,'Trendyol',8999,'https://trendyol.com'),(59,'Hepsiburada',9299,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- REALME (4 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Realme','Realme GT 6 256GB','https://image.realme.com/global/img/realme-gt6/kv.png',24999,28999,4.6,580,5,'hot',14,2024,1900000,2200,7100,0.99,0.93,'Yok','IP65','Gorilla Glass 5'),
('Realme','Realme 12 Pro+ 256GB','https://image.realme.com/global/img/realme-12-pro-plus/kv.png',16999,19999,4.4,720,5,'',15,2024,680000,1120,3400,0.96,0.90,'Yok','IP64','Gorilla Glass 5'),
('Realme','Realme C65 5G 128GB','https://image.realme.com/global/img/realme-c65/kv.png',5999,6999,4.1,1200,5,'',14,2024,320000,580,1600,0.88,0.82,'Yok','IP54','Yok'),
('Realme','Realme Narzo 70 Pro 256GB','https://image.realme.com/global/img/narzo-70-pro/kv.png',9999,11999,4.3,840,5,'',17,2024,520000,920,2600,0.92,0.86,'Yok','IP54','Gorilla Glass 3');

-- Specs Realme
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(60,'Ekran','6.78" LTPS AMOLED 120Hz'),(60,'İşlemci','Snapdragon 8s Gen 3'),(60,'RAM','12 GB'),(60,'Depolama','256 GB'),(60,'Batarya','5500 mAh'),(60,'Kamera','50 MP + 50 MP'),(60,'OS','Android 14 (realme UI 5.0)'),(60,'5G','Evet'),(60,'Ağırlık','199 g'),(60,'USB','USB-C 2.0'),(60,'Şarj','120W Kablolu'),(60,'Su Geçirmezlik','IP65'),(60,'WiFi','Wi-Fi 7'),(60,'Bluetooth','5.4'),(60,'NFC','Evet'),
(61,'Ekran','6.7" AMOLED 120Hz'),(61,'İşlemci','Snapdragon 7s Gen 2'),(61,'RAM','12 GB'),(61,'Depolama','256 GB'),(61,'Batarya','5000 mAh'),(61,'Kamera','50 MP + 64 MP + 8 MP'),(61,'OS','Android 14 (realme UI 5.0)'),(61,'5G','Evet'),(61,'Ağırlık','190 g'),(61,'USB','USB-C 2.0'),(61,'Şarj','67W Kablolu'),(61,'Su Geçirmezlik','IP64'),(61,'WiFi','Wi-Fi 6E'),(61,'Bluetooth','5.3'),(61,'NFC','Evet'),
(62,'Ekran','6.67" IPS LCD 90Hz'),(62,'İşlemci','MediaTek Dimensity 6300'),(62,'RAM','4 GB'),(62,'Depolama','128 GB'),(62,'Batarya','5000 mAh'),(62,'Kamera','50 MP + 2 MP'),(62,'OS','Android 14 (realme UI 5.0)'),(62,'5G','Evet'),(62,'Ağırlık','191 g'),(62,'USB','USB-C 2.0'),(62,'Şarj','45W Kablolu'),(62,'Su Geçirmezlik','IP54'),(62,'WiFi','Wi-Fi 5'),(62,'Bluetooth','5.1'),(62,'NFC','Hayır'),
(63,'Ekran','6.67" AMOLED 120Hz'),(63,'İşlemci','MediaTek Dimensity 7050'),(63,'RAM','8 GB'),(63,'Depolama','256 GB'),(63,'Batarya','5000 mAh'),(63,'Kamera','50 MP + 8 MP + 2 MP'),(63,'OS','Android 14 (realme UI 5.0)'),(63,'5G','Evet'),(63,'Ağırlık','181 g'),(63,'USB','USB-C 2.0'),(63,'Şarj','67W Kablolu'),(63,'Su Geçirmezlik','IP54'),(63,'WiFi','Wi-Fi 6'),(63,'Bluetooth','5.3'),(63,'NFC','Evet');

-- Perf Realme
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(60,90,88,84,88,82,88),(61,55,52,76,82,76,84),(62,24,20,36,80,52,58),(63,50,46,62,80,68,78);

-- Stores Realme
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(60,'Trendyol',24999,'https://trendyol.com'),(60,'Hepsiburada',25999,'https://hepsiburada.com'),
(61,'Trendyol',16999,'https://trendyol.com'),(61,'Hepsiburada',17499,'https://hepsiburada.com'),
(62,'Trendyol',5999,'https://trendyol.com'),(62,'Hepsiburada',6299,'https://hepsiburada.com'),
(63,'Trendyol',9999,'https://trendyol.com'),(63,'Hepsiburada',10499,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- ASUS (3 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Asus','Asus ROG Phone 8 Pro 512GB','https://rog.asus.com/media/1702004219625.png',54999,59999,4.7,420,4,'hot',8,2024,2100000,2950,9600,1.04,0.96,'MIL-STD-810H','IP68','Gorilla Glass Victus 2'),
('Asus','Asus Zenfone 11 Ultra 256GB','https://www.asus.com/media/global/products/images/2024/zenfone11ultra/kv.png',39999,44999,4.6,380,4,'',11,2024,1980000,2310,7250,0.98,0.90,'MIL-STD-810H','IP65','Gorilla Glass Victus 2'),
('Asus','Asus ROG Phone 7 256GB','https://rog.asus.com/media/rog-phone7-kv.png',34999,42999,4.6,580,4,'best',19,2023,1500000,1960,5200,1.08,0.98,'MIL-STD-810H','IPX4','Gorilla Glass Victus 2');

-- Specs Asus
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(64,'Ekran','6.78" AMOLED 165Hz'),(64,'İşlemci','Snapdragon 8 Gen 3'),(64,'RAM','24 GB'),(64,'Depolama','512 GB'),(64,'Batarya','5500 mAh'),(64,'Kamera','50 MP + 13 MP + 32 MP'),(64,'OS','Android 14'),(64,'5G','Evet'),(64,'Ağırlık','225 g'),(64,'USB','USB-C 3.2'),(64,'Şarj','65W Kablolu · 15W Kablosuz'),(64,'Su Geçirmezlik','IP68'),(64,'WiFi','Wi-Fi 7'),(64,'Bluetooth','5.4'),(64,'NFC','Evet'),
(65,'Ekran','6.78" AMOLED 144Hz'),(65,'İşlemci','Snapdragon 8 Gen 3'),(65,'RAM','16 GB'),(65,'Depolama','256 GB'),(65,'Batarya','5500 mAh'),(65,'Kamera','50 MP + 13 MP + 32 MP'),(65,'OS','Android 14'),(65,'5G','Evet'),(65,'Ağırlık','224 g'),(65,'USB','USB-C 3.2'),(65,'Şarj','65W Kablolu · 15W Kablosuz'),(65,'Su Geçirmezlik','IP65'),(65,'WiFi','Wi-Fi 7'),(65,'Bluetooth','5.3'),(65,'NFC','Evet'),
(66,'Ekran','6.78" AMOLED 165Hz'),(66,'İşlemci','Snapdragon 8 Gen 2'),(66,'RAM','16 GB'),(66,'Depolama','256 GB'),(66,'Batarya','6000 mAh'),(66,'Kamera','50 MP + 13 MP + 5 MP'),(66,'OS','Android 14'),(66,'5G','Evet'),(66,'Ağırlık','239 g'),(66,'USB','USB-C 3.1'),(66,'Şarj','65W Kablolu'),(66,'Su Geçirmezlik','IPX4'),(66,'WiFi','Wi-Fi 6E'),(66,'Bluetooth','5.3'),(66,'NFC','Evet');

-- Perf Asus
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(64,94,99,98,86,80,96),(65,94,98,94,86,80,94),(66,88,94,90,90,76,96);

-- Stores Asus
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(64,'Trendyol',54999,'https://trendyol.com'),(64,'Hepsiburada',55999,'https://hepsiburada.com'),
(65,'Trendyol',39999,'https://trendyol.com'),(65,'Hepsiburada',40999,'https://hepsiburada.com'),
(66,'Trendyol',34999,'https://trendyol.com'),(66,'Hepsiburada',35999,'https://hepsiburada.com');

-- ══════════════════════════════════════════════
-- HONOR (3 model)
-- ══════════════════════════════════════════════
INSERT INTO phones (brand,name,img,price,old_price,rating,review_cnt,store_count,badge,discount,year,antutu,geek_single,geek_multi,sar_head,sar_body,drop_test,water_test,screen_prot) VALUES
('Honor','Honor Magic 6 Pro 512GB','https://www.hihonor.com/content/dam/honor/global/products/phones/magic6-pro/kv.png',39999,44999,4.6,340,4,'new',11,2024,1800000,2180,6800,0.96,0.90,'MIL-STD-810H','IP68','Kunlun Glass 2'),
('Honor','Honor 200 Pro 256GB','https://www.hihonor.com/content/dam/honor/global/products/phones/honor200-pro/kv.png',24999,28999,4.5,480,4,'',14,2024,780000,1280,3900,0.98,0.92,'Yok','IP65','Gorilla Glass 5'),
('Honor','Honor X9b 256GB','https://www.hihonor.com/content/dam/honor/global/products/phones/honor-x9b/kv.png',12999,14999,4.3,680,4,'',13,2024,580000,980,2800,0.94,0.88,'Yok','IP64','Gorilla Glass 5');

-- Specs Honor
INSERT INTO phone_specs (phone_id,spec_key,spec_val) VALUES
(67,'Ekran','6.8" LTPO OLED 120Hz'),(67,'İşlemci','Snapdragon 8 Gen 3'),(67,'RAM','16 GB'),(67,'Depolama','512 GB'),(67,'Batarya','5600 mAh'),(67,'Kamera','50 MP + 180 MP + 12 MP'),(67,'OS','Android 14 (MagicOS 8)'),(67,'5G','Evet'),(67,'Ağırlık','229 g'),(67,'USB','USB-C 3.2'),(67,'Şarj','80W Kablolu · 66W Kablosuz'),(67,'Su Geçirmezlik','IP68'),(67,'WiFi','Wi-Fi 7'),(67,'Bluetooth','5.3'),(67,'NFC','Evet'),
(68,'Ekran','6.78" OLED 120Hz'),(68,'İşlemci','Snapdragon 8s Gen 3'),(68,'RAM','12 GB'),(68,'Depolama','256 GB'),(68,'Batarya','5200 mAh'),(68,'Kamera','50 MP + 50 MP + 12 MP'),(68,'OS','Android 14 (MagicOS 8)'),(68,'5G','Evet'),(68,'Ağırlık','199 g'),(68,'USB','USB-C 2.0'),(68,'Şarj','100W Kablolu · 66W Kablosuz'),(68,'Su Geçirmezlik','IP65'),(68,'WiFi','Wi-Fi 7'),(68,'Bluetooth','5.3'),(68,'NFC','Evet'),
(69,'Ekran','6.78" AMOLED 120Hz'),(69,'İşlemci','Snapdragon 6 Gen 1'),(69,'RAM','8 GB'),(69,'Depolama','256 GB'),(69,'Batarya','5800 mAh'),(69,'Kamera','108 MP + 5 MP + 2 MP'),(69,'OS','Android 14 (MagicOS 8)'),(69,'5G','Evet'),(69,'Ağırlık','186 g'),(69,'USB','USB-C 2.0'),(69,'Şarj','35W Kablolu'),(69,'Su Geçirmezlik','IP64'),(69,'WiFi','Wi-Fi 6E'),(69,'Bluetooth','5.3'),(69,'NFC','Evet');

-- Perf Honor
INSERT INTO phone_perf (phone_id,cpu,gpu,ram,battery,camera,display) VALUES
(67,94,93,92,88,92,94),(68,90,88,86,86,84,90),(69,56,52,64,90,70,80);

-- Stores Honor
INSERT INTO store_prices (phone_id,store_name,price,url) VALUES
(67,'Trendyol',39999,'https://trendyol.com'),(67,'Hepsiburada',40999,'https://hepsiburada.com'),
(68,'Trendyol',24999,'https://trendyol.com'),(68,'Hepsiburada',25499,'https://hepsiburada.com'),
(69,'Trendyol',12999,'https://trendyol.com'),(69,'Hepsiburada',13499,'https://hepsiburada.com');
