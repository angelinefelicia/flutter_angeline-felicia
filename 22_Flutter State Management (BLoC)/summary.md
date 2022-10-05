- Declarative UI
  - Deskripsi
    - Flutter memiliki sifat declarative yang artinya flutter membangun UI-nya pada screen untuk mencerminkan keadaan state saat ini.
  
  - State
    - State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori.
    - Flutter akan membangun ulang UInya ketika ada state atau data yang berubah.
    - Ada 2 jenis state dalam flutter. yaitu ephemeral state dan app state.
    - UI = f(state)

      UI: the layout on the screen

      f: your build methods

      state: the application state

  - Ephemeral State
    - Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, seperti PageView, BottomNavigationBar, Switch Button.
    - Tidak perlu state management yang kompleks.
    - Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState().

  - App State
    - Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, seperti login info, pengaturan preferensi pengguna, keranjang belanja (dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda).

  - Pendekatan State Management
    - setState: lebih cocok penggunaannya pada ephemeral state.
    - Provider: penggunaan untuk state management yang lebih kompleks seperti app state.
    - Bloc: menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic-nya.

- Provider
  - ChangeNotifier
    - Class yang menambah dan menghapus listeners.
    - Digunakan dengan cara meng-extends.
    - Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI-nya harus dibangun ulang.
  - ChangeNotifierProvider
    - Widget yang membungkus sebuah class.
    - Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI-nya.
    - Menggunakan create, provider yang akan menyimpan model yang telah dibuat.
  - MultiProvider
    - Digunakan jika membutuhkan lebih dari satu provider.
  - Consumer
    - Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier.
    - Membangun ulang widget yang dibungkus Consumer saja.
    - Penting untuk meletakan Consumer pada lingkup sekecil mungkin.
    - Membutuhkan properti builder yang berisi context, model, dan child.

- BLoC (Business Logic Component)
  - Memisahkan antara business logic dengan UI.
  - BLoC digunakan karena simple, powerful, dan testable.
  - Cara kerja:
    - Menerima event sebagai input.
    - Dianalisa dan dikelola di dalam BLoc.
    - Menghasil state sebagai output.

    Event (input) -> BLoc -> State (Output)

  - Stream
    - Rangkaian proses secara asynchronous.
    - Actor utama di dalam BLoc.

  - BlocProvider: widget yang menyediakan Bloc ke children-nya.
  - BlocBuilder: widget yang menangani pembuatan widget sebagai respons terhadap state baru.