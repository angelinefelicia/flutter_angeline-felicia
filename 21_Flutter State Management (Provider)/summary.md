- State
  - Deskripsi
    - Merupakan data/informasi yang dapat dibaca saat pembuatan widget.
    - Akan berubah saat widget sedang aktif.
    - Untuk mengelola state memerlukan StatefulWidget (karena state hanya dimiliki oleh StatefulWidget).

  - Memanfaatkan state
    - Ketika ingin membuat sebuah widget yang menyimpan perubahan.
    - Menyimpan nilai di property dari class (dibuat sebagai property dari class).
    - Kalau ada perubahan dapat digunakan pada widget saat build.

  - Mengubah state
    - Menggunakan method setState.
      ```
      onPressed: () {
        setState(() {
            num = num + 1;
        });
      },
      ```

- Global State
  - Deskripsi
    - Merupakan state biasa yang dapat digunakan pada seluruh widget (state yang dapat digunakan di seluruh aplikasi).
    - Digunakan agar antar widget dapat memanfaatkan state yang sama dengan mudah.
    - Memiliki State Management.
    - Memerlukan menginstalan agar dapat digunakan.

  - Instalasi Provider
    - Menambahkan package Provider pada bagian dependencies dalam file pubspec.yaml.
    - Jalankan perintah "flutter pub get".