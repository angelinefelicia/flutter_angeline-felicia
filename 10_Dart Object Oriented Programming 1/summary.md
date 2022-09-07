- Perkenalan Object Oriented Programming (OOP)
  - Merupakan paradigma pemrograman yang berkonsep object.
  - Memvisualisasikan object di dunia nyata ke dalam program komputer.
  - Disebut juga sebagai OOP
  - Program yang disusun dalam bentuk abstraksi object dengan menampilkan property atau method yang relevan saja dan menyembunyikan detailnya.
  - Data dan proses diletakkan pada abstraksi tersebut.
  - Keuntungan: 
    - Mudah di-troubleshoot (ketika error, bisa tau letak kesalahannya tanpa melakukan pengecekan baris per baris).
    - Mudah digunakan ulang (melalui object yang memiliki perilaku yang sama).
  - Selain di Dart, OOP juga dipakai di C++, Java, JavaScript, Python.
  - Komponen OOP terdiri dari: Class, Object, Property, Method, Inheritance, Generics.

- Class
  - Merupakan abstraksi (gambaran/blueprint) dari sebuah benda (object).
  - Memiliki ciri-ciri yang disebut sebagai property.
  - Memiliki sifat dan kemampuan yang disebut sebagai method.
  
  Contoh:
  - Membuat Class:
    - Menggunakan kata kunci "class".
    - Memiliki nama.
    - Isiannya berada di dalam tanda kurung.

    ```
    class Hewan {
        // property
        // method
    }
    ```
  - Membuat Object:
    - Object dibuat berdasarkan class.
    - Object disimpan dalam bentuk variable yang disebut sebagai instance of class.
    - Diperlakukan seperti data.

    ```
    void main() {
        var h1 = Hewan();
        var h2 = Hewan();
        var h3 = Hewan();
    }
    ```

- Property
  - Merupakan ciri-ciri suatu class atau hal-hal yang dimiliki suatu class untuk menggambarkan suatu object (Contoh: nama, usia, berat badan, tinggi badan, dan lain-lain).
  - Memiliki sifat seperti variabel (yang memiliki tipe data dan menginisialisasikan suatu nilai atau value, dapat juga bernilai Null dengan menggunakan tanda tanya (?)).

  Contoh:
  - Membuat Property:
    ```
    class Hewan {
        var mata = 0;
        var hidung = 0;
    }
    ```

  - Mengakses Property:
    ```
    void main() {
        var h1 = Hewan();
        print(h1.mata);
    }
    ```

- Method
  - Merupakan sifat atau perilaku suatu class.
  - Aktivitas yang dapat dikerjakan suatu class.
  - Sebuah function atau fungsi pada class (yang dapat memiliki parameter dan juga dapat melakukan return value) sehingga memiliki sifat seperti function. 

  Contoh:
  - Membuat Method:
    ```
    class Hewan {
        void bersuara() {
            print('bersuara');
        }
    }
    ```

  - Menjalankan Method:
    ```
    void main() {
        var h1 = Hewan();
        hi.bersuara();
    }
    ```