- Finite State Machines
  - Merupakan mesin yang memiliki sejumlah state.
  - Tiap state menunjukkan apa yang terjadi sebelumnya.

  Contoh:

  Terdapat 3 state yang menunjukkan kejadian dalam suatu proses:
  - IDDLE   : saat tidak terjadi proses.
  - RUNNING : saat proses sedang berjalan.
  - ERROR   : saat proses gagal diselesaikan.

  Proses Sukses:
  - IDDLE berubah menjadi RUNNING saat proses berjalan.
  - RUNNING kembali menjadi IDDLE saat proses selesai.

  Proses Gagal:
  - IDDLE berubah menjadi RUNNING saat proses berjalan.
  - RUNNING menjadi ERROR saat terjadi kegagalan.
  - ERROR kembali menjadi IDDLE.

  Implementasi Finite State Machines pada MVVM (ViewModel)
  - Menambah Enum
    - Membuat enum untuk masing-masing state:
      - none saat IDDLE.
      - loading saat RUNNING.
      - error saat ERROR.
  - Menambah Getter-Setter
    - Membuat getter-setter untuk menyimpan state dari widget.
  - Gunakan State
    - Tiap proses yang perlu state tersebut, dapat memanfaatkannya.

  Implementasi pada Widget
  - Membuat perbedaan tampilan pada tiap state.
    - Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan.

- Unit Testing
  - Unit Test
    - Salah satu jenis pengujian pada perangkat lunak.
    - Pengujian dilakukan pada unit dalam perangkat lunak.
    - Unit yang dimaksud umumnya adalah fungsi/method.

    Tujuan:
    - Memastikan fungsi dapat mengolah berbagai jenis input.
    - Memastikan hasil dari suatu fungsi/method sudah selesai.
    - Menjadi dokumentasi.

    Cara melakukan:
    - Manual: unit dijalankan dan dicek hasilnya secara manual.
    - Automated: menulis script yang dapat dijalankan berkali-kali menggunakan test runner.

    Cara menggunakan Automated testing:
    - Menambah dependencies
      - Tambahkan test, pada bagian dev_dependencies dalam file pubspec.yaml.
      - Jalankan "flutter pub get" pada terminal.

    - Membuat File Test
      - Pada folder test, tambahkan folder baru "model/api".
      - Dalam folder tersebut, tambahkan file baru "nama_file_test.dart".

    - Menulis Test Script
      - Import package test.
      - Membuat test case.
      - Menjalankan fungsi.
      - Cek hasil dengan expect.

    - Mengelompokkan Test
      - Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok.
      - Dilakukan dengan menggunakan Group.

  - Mocking
    - Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian.
    - Pengaruh tersebut dapat mengganggu proses pengujian.
    - Dilakukan mocking untuk menghindari masalah-masalah tersebut.

    Cara kerja:
    - Suatu object dibuat bentuk tiruannya.
    - Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli.
    - Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal.

    Cara melakukan:
    - Menambah dependencies
      - Tambahkan mockito dan build_runner pada bagian dev_dependencies dalam file pubspec.yaml.
      - Jalankan "flutter pub get" pada terminal.
    - Melakukan mocking
      - Mengubah kode agar dapat dilakukan mocking.
      - Memasang annotation untuk membuat mock. (@GenerateMocks([API]))
      - Membuat file mock dengan menjalankan perintah "flutter pub run build_runner build".
      - Menggunakan mock yang telah dibuat.
      - Test dapat berjalan lebih cepat dengan mocking.
