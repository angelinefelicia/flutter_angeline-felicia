- Apa itu MVVM Architecture
  - MVVM adalah singkatan dari Model-View ViewModel.
  - Memisahkan business logic dengan tampilan (View) ke dalam ViewModel.
  - Keuntungan:
    1. Reusability: jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama.
    2. Maintainability: mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic.
    3. Testability: pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian.

- Melakukan MVVM
  - Struktur Direktori
    - Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut.
    - Tiap screen diletakkan dalam sebuah direktori yang didalamnya terdapat View dan ViewModel.

- Model
  - Merupakan bentuk data yang akan digunakan, dibuat dalam bentuk class.
  - Data-data yang dimuat, diletakkan pada property.

- ViewModel
  - Menyimpan data-data dan logic yang diperlukan oleh suatu halaman.
  - Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel tersebut juga.

- Mendaftarkan ViewModel
  - Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel.
  - MaterialApp sebagai child utama.

- View
  - Menggunakan stateful widget (digunakan karena memerlukan perubahan state).

- Menampilkan data pada View
  - Diletakkan pada build.
  - Menggunakan getters yang ada pada ViewModel.
  - Data langsung ditampilkan pada widget.