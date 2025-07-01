# 🛒 Platform E-Commerce - CodeIgniter 4

Aplikasi web e-commerce lengkap yang dibangun dengan [CodeIgniter 4](https://codeigniter.com/), dilengkapi fitur keranjang belanja modern, diskon harian otomatis, kalkulasi ongkos kirim, dan manajemen transaksi lengkap dengan dashboard admin.

[![CodeIgniter](https://img.shields.io/badge/CodeIgniter-4.x-orange.svg)](https://codeigniter.com/)
[![PHP](https://img.shields.io/badge/PHP-8.2+-blue.svg)](https://php.net/)
[![Lisensi](https://img.shields.io/badge/Lisensi-MIT-green.svg)](LICENSE)

---

## 📋 Daftar Isi

- [Gambaran Umum](#gambaran-umum)
- [Fitur](#fitur)
- [Persyaratan Sistem](#persyaratan-sistem)
- [Instalasi](#instalasi)
- [Konfigurasi](#konfigurasi)
- [Penggunaan](#penggunaan)
- [Integrasi API](#integrasi-api)
- [Struktur Proyek](#struktur-proyek)
- [Screenshot](#screenshot)
- [Kontribusi](#kontribusi)
- [Lisensi](#lisensi)
- [Dukungan](#dukungan)

---

## 🎯 Gambaran Umum

Platform e-commerce ini menyediakan solusi belanja online lengkap dengan antarmuka terpisah untuk pelanggan dan administrator. Dibangun dengan arsitektur modern CodeIgniter 4, menawarkan autentikasi aman, manajemen inventori real-time, sistem diskon otomatis, dan kalkulasi ongkir terintegrasi.

### Keunggulan Utama
- **Arsitektur MVC Modern** - Kode yang bersih dan mudah dipelihara
- **Desain Responsif** - Pendekatan mobile-first dengan template NiceAdmin
- **Kalkulasi Real-time** - Harga dinamis dan ongkos kirim
- **Diskon Otomatis** - Sistem diskon harian dengan penyimpanan database
- **Panel Admin Lengkap** - Operasi CRUD lengkap dan pelaporan
- **Autentikasi Aman** - Kontrol akses berbasis peran

---

## ✨ Fitur

### 🔐 Autentikasi & Keamanan
- **Autentikasi Multi-peran** - Antarmuka terpisah untuk admin dan pelanggan
- **Manajemen Sesi** - Penanganan sesi aman dengan akses berbasis peran
- **Proteksi Password** - Penyimpanan password terenkripsi
- **Kontrol Akses** - Proteksi rute berdasarkan peran pengguna

### 📦 Manajemen Produk
- **Katalog Produk** - Daftar produk lengkap dengan gambar dan detail
- **Kontrol Inventori** - Manajemen stok real-time
- **Manajemen Kategori** - Organisasi produk berdasarkan kategori
- **Upload Gambar** - Upload file aman dengan validasi
- **Operasi CRUD** - Fungsionalitas buat, baca, update, hapus lengkap
- **Export PDF** - Generate laporan produk dalam format PDF

### 🛍️ Pengalaman Berbelanja
- **Keranjang Belanja Pintar** - Tambah, hapus, dan update item dengan mudah
- **Kalkulasi Otomatis** - Perhitungan harga dan total real-time
- **Diskon Harian** - Aplikasi diskon otomatis berdasarkan tanggal
- **Keranjang Persisten** - Data keranjang tersimpan lintas sesi

### 🎁 Sistem Diskon
- **Diskon Berbasis Tanggal** - Aplikasi diskon harian otomatis
- **Berbasis Database** - Manajemen diskon fleksibel melalui panel admin
- **Integrasi Transaksi** - Diskon tercatat dalam riwayat transaksi
- **Aplikasi Real-time** - Kalkulasi diskon langsung saat berbelanja

### 🚚 Integrasi Pengiriman
- **API RajaOngkir** - Kalkulasi ongkos kirim real-time
- **Multi Tujuan** - Dukungan untuk berbagai lokasi pengiriman
- **Transparansi Biaya** - Rincian biaya pengiriman yang jelas
- **Pilihan Pengiriman** - Multiple penyedia layanan pengiriman

### 💳 Manajemen Transaksi
- **Checkout Aman** - Alur pemrosesan pesanan lengkap
- **Riwayat Pesanan** - Pelacakan transaksi komprehensif
- **Catatan Detail** - Detail transaksi dan item lengkap
- **Manajemen Alamat** - Penyimpanan dan manajemen alamat pengiriman

### 📊 Dashboard Admin
- **Gambaran Analitik** - Statistik dan ringkasan transaksi
- **Laporan Penjualan** - Metrik performa penjualan detail
- **Manajemen Pengguna** - Administrasi akun pelanggan
- **Monitoring Inventori** - Pelacakan level stok dan alert

---

## 🔧 Persyaratan Sistem

| Komponen | Versi Minimum | Direkomendasikan |
|----------|---------------|------------------|
| **PHP** | 8.2.0 | 8.3+ |
| **Web Server** | Apache 2.4+ / Nginx 1.18+ | Apache 2.4+ |
| **Database** | MySQL 5.7+ / MariaDB 10.3+ | MySQL 8.0+ |
| **Composer** | 2.0+ | Terbaru |
| **Memory** | 256MB | 512MB+ |
| **Storage** | 100MB | 500MB+ |

### Ekstensi PHP yang Diperlukan
- `intl`
- `mbstring`
- `mysqli` atau `pdo_mysql`
- `curl`
- `gd` atau `imagick`
- `json`
- `xml`

---

## 🚀 Instalasi

### 1. Clone Repository
```bash
git clone https://github.com/username-anda/toko-ci4.git
cd toko-ci4
```

### 2. Install Dependencies
```bash
composer install
```

### 3. Setup Environment
```bash
# Copy file environment
cp env .env

# Edit konfigurasi
nano .env
```

### 4. Konfigurasi Database
```bash
# Buat database
mysql -u root -p
CREATE DATABASE toko_online;
exit
```

### 5. Jalankan Migrasi
```bash
php spark migrate
php spark db:seed DatabaseSeeder
```

### 6. Set Permissions
```bash
chmod -R 777 writable/
chmod -R 755 public/uploads/
```

### 7. Jalankan Development Server
```bash
php spark serve
```

Kunjungi `http://localhost:8080` untuk mengakses aplikasi.

---

## ⚙️ Konfigurasi

### Variabel Environment (.env)
```env
#--------------------------------------------------------------------
# DATABASE
#--------------------------------------------------------------------
database.default.hostname = localhost
database.default.database = toko_online
database.default.username = username_anda
database.default.password = password_anda
database.default.DBDriver = MySQLi

#--------------------------------------------------------------------
# RAJAONGKIR API
#--------------------------------------------------------------------
RAJAONGKIR_API_KEY = api_key_rajaongkir_anda
RAJAONGKIR_BASE_URL = https://api.rajaongkir.com/starter

#--------------------------------------------------------------------
# PENGATURAN APP
#--------------------------------------------------------------------
app.baseURL = 'http://localhost:8080/'
app.sessionDriver = 'CodeIgniter\Session\Handlers\FileHandler'
app.sessionSavePath = WRITEPATH . 'session'
```

### Setup API
1. Daftar di [RajaOngkir](https://rajaongkir.com/)
2. Dapatkan API key Anda
3. Tambahkan key ke file `.env`
4. Konfigurasi layanan pengiriman yang didukung di panel admin

---

## 🎮 Penggunaan

### Untuk Pelanggan
1. **Jelajahi Produk** - Lihat produk yang tersedia dengan gambar dan harga
2. **Tambah ke Keranjang** - Pilih item dan kuantitas yang diinginkan
3. **Terapkan Diskon** - Diskon harian diterapkan otomatis
4. **Hitung Ongkir** - Masukkan tujuan untuk biaya pengiriman
5. **Checkout** - Selesaikan pembelian dengan konfirmasi pesanan
6. **Lihat Riwayat** - Lacak pesanan dan transaksi sebelumnya

### Untuk Administrator
1. **Login ke Panel Admin** - Akses melalui rute `/admin`
2. **Kelola Produk** - Tambah, edit, atau hapus produk
3. **Atur Diskon** - Konfigurasi tarif diskon harian
4. **Lihat Analitik** - Monitor performa penjualan
5. **Kelola Pengguna** - Tangani akun pelanggan
6. **Export Laporan** - Generate laporan PDF

### Kredensial Default
```
Akun Admin:
Username: admin
Password: admin123

Akun Pelanggan:
Username: customer
Password: customer123
```

---

## 🔌 Integrasi API

### API Pengiriman RajaOngkir
Aplikasi terintegrasi dengan API RajaOngkir untuk kalkulasi ongkir real-time:

```php
// Contoh pemanggilan API
$client = new GuzzleHttp\Client();
$response = $client->request('POST', 'https://api.rajaongkir.com/starter/cost', [
    'headers' => [
        'key' => $apiKey,
        'content-type' => 'application/x-www-form-urlencoded'
    ],
    'form_params' => [
        'origin' => $origin,
        'destination' => $destination,
        'weight' => $weight,
        'courier' => $courier
    ]
]);
```

### Kurir yang Didukung
- JNE (Jalur Nugraha Ekakurir)
- TIKI (Citra Van Titipan Kilat)
- POS (Pos Indonesia)

---

## 📁 Struktur Proyek

```
toko-ci4/
├── app/
│   ├── Controllers/
│   │   ├── Admin/
│   │   │   ├── Dashboard.php
│   │   │   ├── Products.php
│   │   │   └── Categories.php
│   │   ├── Auth.php
│   │   ├── Home.php
│   │   ├── Cart.php
│   │   └── Checkout.php
│   ├── Models/
│   │   ├── ProductModel.php
│   │   ├── CategoryModel.php
│   │   ├── UserModel.php
│   │   ├── CartModel.php
│   │   ├── TransactionModel.php
│   │   └── DiscountModel.php
│   ├── Views/
│   │   ├── admin/
│   │   │   ├── layout/
│   │   │   ├── dashboard/
│   │   │   └── products/
│   │   ├── customer/
│   │   │   ├── layout/
│   │   │   ├── home/
│   │   │   ├── cart/
│   │   │   └── checkout/
│   │   └── auth/
│   ├── Database/
│   │   ├── Migrations/
│   │   └── Seeds/
│   └── Config/
├── public/
│   ├── assets/
│   │   ├── css/
│   │   ├── js/
│   │   └── img/
│   └── uploads/
├── writable/
│   ├── cache/
│   ├── logs/
│   └── session/
├── vendor/
├── .env
├── composer.json
└── README.md
```

---

## 📸 Screenshot

### Antarmuka Pelanggan
- **Beranda** - Showcase produk dengan pencarian dan filter
- **Detail Produk** - Informasi produk detail dengan gambar
- **Keranjang Belanja** - Keranjang interaktif dengan kontrol kuantitas
- **Checkout** - Proses checkout yang streamlined

### Antarmuka Admin
- **Dashboard** - Analitik dan gambaran umum komprehensif
- **Manajemen Produk** - Administrasi produk yang mudah digunakan
- **Manajemen Pesanan** - Alur pemrosesan pesanan lengkap
- **Laporan** - Laporan penjualan dan inventori detail

---

## 🤝 Kontribusi

Kami menyambut kontribusi untuk meningkatkan platform e-commerce ini! Silakan ikuti langkah-langkah berikut:

1. **Fork Repository**
   ```bash
   git fork https://github.com/username-anda/toko-ci4.git
   ```

2. **Buat Feature Branch**
   ```bash
   git checkout -b feature/fitur-keren
   ```

3. **Lakukan Perubahan**
   - Ikuti standar coding PSR-12
   - Tambahkan test untuk fitur baru
   - Update dokumentasi

4. **Commit Perubahan**
   ```bash
   git commit -m "Tambah fitur keren"
   ```

5. **Push ke Branch**
   ```bash
   git push origin feature/fitur-keren
   ```

6. **Buat Pull Request**
   - Berikan deskripsi yang jelas
   - Sertakan screenshot jika diperlukan
   - Referensikan issue terkait

### Panduan Pengembangan
- Ikuti best practices CodeIgniter 4
- Gunakan nama variabel dan fungsi yang bermakna
- Tambahkan komentar untuk logic yang kompleks
- Pastikan responsivitas mobile
- Test menyeluruh sebelum submit

---

## 📄 Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT - lihat file [LICENSE](LICENSE) untuk detail.

```
Lisensi MIT

Copyright (c) 2024 Nama Anda

Dengan ini diberikan izin, tanpa biaya, kepada siapa pun yang memperoleh salinan
perangkat lunak ini dan file dokumentasi terkait ("Perangkat Lunak"), untuk 
menggunakan Perangkat Lunak tanpa batasan, termasuk tanpa batasan hak untuk 
menggunakan, menyalin, memodifikasi, menggabungkan, menerbitkan, mendistribusikan, 
mensublisensikan, dan/atau menjual salinan Perangkat Lunak, dan untuk mengizinkan 
orang yang menerima Perangkat Lunak untuk melakukannya, dengan ketentuan sebagai berikut:

Pemberitahuan hak cipta di atas dan pemberitahuan izin ini harus disertakan dalam 
semua salinan atau bagian substansial dari Perangkat Lunak.

PERANGKAT LUNAK INI DISEDIAKAN "SEBAGAIMANA ADANYA", TANPA JAMINAN APA PUN, 
TERSURAT MAUPUN TERSIRAT, TERMASUK NAMUN TIDAK TERBATAS PADA JAMINAN KELAYAKAN 
UNTUK DIPERDAGANGKAN, KESESUAIAN UNTUK TUJUAN TERTENTU DAN TIDAK MELANGGAR. 
DALAM KEADAAN APA PUN PENULIS ATAU PEMEGANG HAK CIPTA TIDAK BERTANGGUNG JAWAB 
ATAS KLAIM, KERUSAKAN ATAU KEWAJIBAN LAINNYA, BAIK DALAM TINDAKAN KONTRAK, 
TORT ATAU LAINNYA, YANG TIMBUL DARI, DARI ATAU SEHUBUNGAN DENGAN PERANGKAT LUNAK 
ATAU PENGGUNAAN ATAU TRANSAKSI LAIN DALAM PERANGKAT LUNAK.
```

---

## 🆘 Dukungan

### Mendapatkan Bantuan
- **Dokumentasi** - Lihat [Dokumentasi CodeIgniter 4](https://codeigniter.com/user_guide/)
- **Issues** - Laporkan bug melalui [GitHub Issues](https://github.com/username-anda/toko-ci4/issues)
- **Diskusi** - Bergabung dengan [GitHub Discussions](https://github.com/username-anda/toko-ci4/discussions)

### Masalah Umum
1. **Koneksi Database** - Verifikasi kredensial database di `.env`
2. **Integrasi API** - Periksa validitas API key RajaOngkir
3. **File Permissions** - Pastikan izin direktori yang tepat
4. **Versi PHP** - Konfirmasi PHP 8.2+ telah terinstall

### Informasi Kontak
- **Email** - email.anda@example.com
- **Website** - https://website-anda.com
- **GitHub** - [@username-anda](https://github.com/username-anda)

---

## 🚀 Roadmap

### Fitur Mendatang
- [ ] Dukungan multi-bahasa
- [ ] Integrasi payment gateway
- [ ] Notifikasi email
- [ ] Dashboard laporan lanjutan
- [ ] API untuk mobile app
- [ ] Integrasi media sosial
- [ ] Filter pencarian lanjutan
- [ ] Review dan rating produk

### Riwayat Versi
- **v1.0.0** - Rilis awal dengan fitur inti
- **v1.1.0** - Tambah sistem diskon dan integrasi pengiriman
- **v1.2.0** - Peningkatan dashboard admin dan pelaporan

---

<div align="center">

**⭐ Beri bintang pada repository ini jika membantu!**

Dibuat dengan ❤️ menggunakan [CodeIgniter 4](https://codeigniter.com/)

</div>