- Assets
  - Merupakan file yang di-bundled dan di-deployed bersamaan dengan aplikasi.
  - Tipe-tipe: static data (JSON file), icons, images, dan font file (.ttf).
  - Menentukan assets:
    - Dapat menggunakan pubspec.yaml yang terletak pada root project, digunakan untuk mengidentifikasi assets yang dibutuhkan aplikasi.
    - Menggunakan karakter '/' untuk memasukkan semua assets dibawah satu directory name, contoh: assets/ -> semua file yang ada di directory ini akan langsung didaftarkan sehingga tidak harus satu per satu. 

- Image
  - Dengan memakai image/gambar akan membuat tampilan dapat menjadi lebih menarik.
  - Mendukung format gambar: JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP.
  - Menampilkan gambar pada aplikasi dari project asset atau dari internet.

  - Loading Image (lokal):
    - Memakai widget Image.
    - Membutuhkan properti image dengan class AssetImage().
    Contoh:
    ```
    body: Column(
        children: const [
            Image(
                image: AssetImage(dir),
            )
        ]
    )
    ```

  - Loading Images (cara lain):
    - Memakai method Image.asset (lokal), digunakan untuk mendapatkan image yang sudah ditambahkan dalam project.
      Perbedaan:
      - AssetImage(): cepat dan CPU friendly
      - Image.asset: kode lebih bersih dan rapi
    - Memakai method Image.network (internet), digunakan untuk mendapatkan data image melalui internet dengan menggunakan string url-nya.
    
    Contoh:
    ```
    body: Column(
        children: [
            Image.asset(dir),
            Image.network(url),
        ]
    )
    ```

- Font
  - Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi.
  - Penentuan font yang akan dipakai biasanya ditentukan oleh UI designer.
  - Penerapan font menggunakan custom font atau dari package.

  Custom Font, cara:
  1. Cari dan download font.
  2. Import file .ttf.
  3. Daftarkan font di pubspec.yaml.
  4. Mengatur font sebagai default.
  5. Font dapat juga digunakan pada widget tertentu saja.

  Font dari package, cara:
  1. Tambahkan package google.fonts di dependencies.
  2. Import package di file dart.
  3. Dapat memakai font dengan memanggil GoogleFonts.namaFont().