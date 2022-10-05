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

- BLoC (Business Logic Component)
  - Memisahkan antara business logic dengan UI
  - BLoC digunakan karena simple, powerful, dan testable.
  - Cara kerja:
    - Menerima event sebagai input.
    - Dianalisa dan dikelola di dalam BLoc.
    - Menghasil state sebagai output.

    Event (input) -> BLoc -> State (Output)

  - Stream
    - Rangkaian proses secara asynchronous.
    - Actor utama di dalam BLoc.