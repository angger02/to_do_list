📱 To-Do List App – Flutter

Nama & NIM: Angger Hidayat (2310130002)
Pembagian Tugas: Dikerjakan sendiri

📌 Deskripsi Proyek

Aplikasi ini adalah aplikasi To-Do List sederhana berbasis Flutter yang memiliki fitur:

Login pengguna
Mode Light / Dark
Penyimpanan data menggunakan SQLite

Penyimpanan preferensi pengguna menggunakan SharedPreferences

CRUD item To-Do (Tambah, Tampilkan, Hapus)

🔐 Fitur Login

Fitur login menggunakan SharedPreferences untuk menyimpan status login agar pengguna tidak perlu login ulang setiap membuka aplikasi.
Proses login meliputi:

User memasukkan username dan password.

Validasi sederhana dilakukan di aplikasi.

Jika berhasil, aplikasi menyimpan nilai isLoggedIn = true ke SharedPreferences.

User akan diarahkan ke halaman Home.

🌗 Fitur Light / Dark Mode

Aplikasi mendukung tema light dan dark.
Implementasi meliputi:

Menggunakan ThemeMode pada MaterialApp.

Status tema disimpan menggunakan SharedPreferences.

Ketika user mengganti tema, aplikasinya otomatis berubah dan pilihan tema tidak hilang saat aplikasi ditutup.

🗄️ Implementasi SQLite

SQLite digunakan untuk menyimpan data To-Do secara offline.

Penggunaan SQLite meliputi:

Membuat database menggunakan sqflite

Membuat tabel todo

Operasi CRUD:

Insert data (Add Item)

Read data (Home Page)

Delete data

💾 Implementasi SharedPreferences

SharedPreferences digunakan untuk:

Menyimpan status login (isLoggedIn)

Menyimpan preferensi tema (isDarkMode)

Dengan ini, aplikasi tetap mempertahankan:

User tetap login

Tema yang sudah dipilih tidak berubah

📸 Screenshot Aplikasi

Note: Ganti path gambar sesuai folder Anda (/assets/images/).
Jika tidak punya screenshot, Anda bisa menambahkannya nanti.

Login Page
<img width="1366" height="768" alt="Screenshot (67)" src="https://github.com/user-attachments/assets/c939f85f-a62d-4d64-8fe8-44807e863fec" />


Home Page
<img width="1366" height="768" alt="Screenshot (73)" src="https://github.com/user-attachments/assets/8e5fd2fb-1e5d-4fd1-81b7-2fb8748d5a1e" />


Add Item Page
<img width="1366" height="768" alt="Screenshot (71)" src="https://github.com/user-attachments/assets/18953abc-5c24-409c-be15-61097e1b34dc" />


Light Mode
<img width="1366" height="768" alt="Screenshot (69)" src="https://github.com/user-attachments/assets/0f57d3d8-b1ef-4d9d-aff3-fc709130c3b2" />


Dark Mode (tema setelah diubah)
<img width="1366" height="768" alt="Screenshot (68)" src="https://github.com/user-attachments/assets/101aa53b-b4a0-4d97-949b-605a4281e8a7" />


📝 Cara Penggunaan Aplikasi (Flow Penggunaan)

Buka aplikasi, user akan diarahkan ke halaman Login.

Login, kemudian status login disimpan di SharedPreferences.

Masuk ke Home Page, semua daftar to-do dari SQLite ditampilkan.

User dapat:

Menambah data → menuju halaman Add Item

Menghapus item dari daftar

User dapat mengubah Light/Dark mode lewat toggle.

Tema yang dipilih akan tersimpan, meskipun aplikasi di-restart.

Semua data tugas disimpan di SQLite, sehingga tetap ada walaupun aplikasi ditutup.
