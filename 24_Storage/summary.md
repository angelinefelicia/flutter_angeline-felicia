- Penyimpanan Lokal
  - Diperlukan untuk efisiensi penggunaan data internet.
  - Data yang sudah pernah diambil dari internet dapat disimpan ke data penyimpanan perangkat lokal.
  - Cara Implementasi:
    - Shared Preferences
    - Local Database

- Shared Preference
  - Digunakan untuk menyimpan data yang sederhana.
  - Penyimpanan data dengan format key-value.
  - Menyimpan tipe data dasar seperti teks, angka, dan boolean.
  - Contoh: menyimpan data login dan menyimpan riwayat pencarian.

- Local Database (SQLite)
  - Analogikan database sebagai lemari arsip.
    - Database memiliki tabel (file folders).
    - Data yang tersimpan (lembaran kertas).
    - Tabel memiliki column untuk mendefinisikan data yang tersimpan pada row.
  - Database dapat digunakan untuk menyimpan dan mempertahankan data dalam jumlah besar pada local device.
  - Bersifat privat, artinya hanya aplikasi itu sendiri yang dapat mengakses database-nya.
  - Menggunakan SQLite database menggunakan plugin sqflite.
  - SQLite merupakan database open source yang mendukung insert, read, update, dan remove data.

  Notes:
  - Package sqflite: menyediakan class dan functions untuk berinteraksi dengan SQLite database.
  - Package path: menyediakan functions untuk mendefinisikan lokasi penyimpanan database pada memori. 