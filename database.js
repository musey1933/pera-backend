// database.js – MySQL bağlantısı
require('dotenv').config();
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host:     process.env.DB_HOST || 'localhost',
  port:     process.env.DB_PORT || 3306,
  user:     process.env.DB_USER || 'root',
  password: process.env.DB_PASS || '',
  database: process.env.DB_NAME || 'pera_db',
  waitForConnections: true,
  connectionLimit: 10,
  charset: 'utf8mb4'
});

// Bağlantıyı test et
pool.getConnection()
  .then(conn => {
    console.log('✅ MySQL bağlantısı başarılı:', process.env.DB_NAME);
    conn.release();
  })
  .catch(err => {
    console.error('❌ MySQL bağlantı hatası:', err.message);
    console.error('   → .env dosyanızdaki DB_HOST, DB_USER, DB_PASS değerlerini kontrol edin.');
  });

module.exports = pool;
