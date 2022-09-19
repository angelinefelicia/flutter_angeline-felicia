- Flutter CLI (Command Line Interface)

  Merupakan alat yang digunakan untuk berinteraksi dengan Flutter SDK. Interaksi tersebut merupakan perintah yang dijalankan dalam terminal untuk melakukan suatu tugas tertentu.

  Macam-macam Flutter CLI:
  1. Flutter Doctor: perintah untuk menampilkan informasi software yang dibutuhkan flutter.
     ```
     flutter doctor
     ```
  2. Flutter Create: perintah untuk membuat project aplikasi flutter baru di directory tertentu.
     ```
     flutter create <APP_NAME>
     ```
  3. Flutter Run: perintah untuk menjalankan project aplikasi di device yang tersedia.
     ```
     flutter run <DART_FILE>
     ```
  4. Flutter Emulator: perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru.
     ```
     flutter emulators
     flutter emulators --launch <EMULATOR_ID>
     flutter emulators --create --name <EMULATOR_ID>
     ```
  5. Flutter Channel: perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini.
     ```
     flutter channel
     ```
  6. Flutter Pub

     Ada 2 (dua) syntax yang dapat digunakan:
     - Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml.
       ```
       flutter pub add <PACKAGE_NAME>
       ```
     - Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml.
       ```
       flutter pub get
       ```
  7. Flutter Build: perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy/publish ke AppStore, PlayStore, dll.
     ```
     flutter build <DIRECTORY>
     ```
  8. Flutter Clean: perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Perintah ini akan memperkecil ukuran project tersebut.
     ```
     flutter clean
     ```

- Packages Management
  - Flutter mendukung sharing packages yang merupakan kontribusi dari developer lain.
  - Tujuan: untuk mempercepat pengembangan aplikasi sehingga tidak harus membuat semuanya dari awal/from scratch.
  - Mendapatkan packages dari website pub.dev.

  Cara menambahkan package:
  - Cari package di pub.dev.
  - Copy baris dependencies yang ada di bagian installing.
  - Buka pubspec.yaml.
  - Paste barisnya di bawah dependencies pubspec.yaml.
  - Run flutter pub get di terminal.
  - Import package di file dart agar dapat digunakan.
  - Stop/restart aplikasi jika diperlukan.