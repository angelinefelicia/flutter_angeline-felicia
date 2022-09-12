- Flutter

  Merupakan alat pengembangan antar muka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

  Keunggulan:
  - Mudah digunakan dan dipelajari.
  - Produktivitas tinggi.
  - Dokumentasi lengkap.
  - Komunitas yang berkembang.

  Flutter terdiri dari:
  - SDK (Software Development Kit)

    Merupakan alat-alat untuk membantu proses pengembangan aplikasi.

  - Framework

    Merupakan perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi.

  Membuat project flutter: flutter create <nama_project>
  
  Menjalankan project flutter: flutter run

  Struktur direktori:
  - Directory platform: .android, .iOS, .web
  - Directory project: lib (ruang kerja utama), test (aktivitas pengujian)

  File utama (main.dart) -> lib

- Widget
  - Digunakan untuk membentuk antar muka (UI).
  - Berupa class (blue print)
  - Dapat terdiri dari beberapa widget lainnya.

  Ada 2 Jenis:
  1. Stateless Widget
     - Tidak bergantung pada perubahan data.
     - Hanya fokus pada tampilan.
     - Dibuat dengan "extends" pada class "StatelessWidget".

  2. Stateful Widget
     - Mementingkan pada perubahan data.
     - Dibuat dengan "extends" pada class "StatefulWidget".
     - 1 widget memakai 2 class (widget dan state).

- Built in Widget
  - Dapat langsung digunakan.
  - Sudah terinstal dengan Flutter.

  Contoh:
  - MaterialApp: membangun aplikasi dengan desain material.
  - Scaffold: membentuk sebuah halaman.
  - Appbar: membentuk application bar yang terletak pada bagian atas halaman.
  - Text: menampilkan teks.