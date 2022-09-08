- Constructor
  - Digunakan untuk mengkonstruksi object baru.
  - Merupakan fungsi / method yang dijalankan saat pembuatan object.
  - Dapat menerima parameter (namun tidak memiliki return value).
  - Memiliki nama yang sama dengan nama class-nya.

  Contoh:
  - Memberi constructor, menambahkan method memakai nama yang sama dengan nama class-nya.
  ```
  class Hewan {
    var mata;
    var kaki;

    Hewan() {
        mata = 0;
        kaki = 0;
    }
  }
  ```

- Inheritance (Pewarisan)
  - Membuat class baru dengan memanfaatkan class yang sudah ada.
  - Seperti anak yang mewarisi sifat orang tuanya.
  - Anak disebut sebagai class anak (child), orang tua disebut sebagai class induk (parent).
  - Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru.

  Contoh:
  - Melakukan inheritance, menambahkan kata kunci "extends" saat pembuatan class baru.
  ```
  class Kambing extends Hewan {
    Kambing() {
        mata = 2;
        kaki = 4;
    }
  }
  ``` 

  - Penggunaan class, proses membuat object dari class inheritance sama seperti pembuatan object pada umumnya.
  ```
  void main() {
    var k1 = Kambing();
    print(k1.mata);

    var h1 = Hewan();
    print(h1.mata);
  }
  ```

- Method Overriding
  - Merupakan kemampuan untuk menulis ulang method yang ada pada super class (class induk).
  - Bertujuan agar class anak memiliki method yang sama, dengan proses yang berbeda.

  Beberapa hal yang perlu diperhatikan saat melakukan overriding:
  - Dilakukan pada class inheritance.
  - Dapat menggunakan method yang sudah ada pada class induk.
  - Method dapat ditulis ulang seperti membuat method baru pada class anak.
  - Perlu menambahkan tanda @override di baris sebelum method dibuat.

  Contoh:
  ```
  class Hewan {
    bernapas() {
        print("tidak diketahui");
    }
  }

  // Method Overriding
  class Kambing extends Hewan {
    @override
    bernapas() {
        print("paru-paru");
    }
  }
  ```

- Interface
  - Merupakan class yang menunjukkan method apa saja yang ada pada suatu class.
  - Seluruh method yang ada wajib di-override.
  - Digunakan dengan kata kunci "implements".

  Penggunaan interface: sekilas mirip dengan inheritance tetapi pada class implements wajib melakukan override semua method yang ada pada class induk.

- Abstract Class
  - class abstrak yang hanya berisi gambaran umum dari sebuah class dan tidak dapat dijadikan sebagai object secara langsung.
  - Dapat menurunkan semua property dan method-nya.
  - Digunakan dengan menggunakan kata kunci "extends".
  - Tidak semua method harus di-override.

  Contoh:
  ```
  abstract class Hewan {
    bernapas() {
        print("tidak diketahui");
    }
  }

  class Kambing extends Hewan {
    @override
    bernapas() {
        print("paru-paru");
    }
  }
  ```

- Polymorphism
  - Merupakan kemampuan suatu data (object) berubah menjadi bentuk lain.
  - Tipe data yang dapat digunakan adalah super class.
  - Dapat dilakukan pada class dengan cara menggunakan kata kunci "extends" atau "implements".

  Contoh:
  ```
  void main() {
    Hewan k1 = Kambing();
    k1.bernapas();
  }
  ```

- Generics
  - Merupakan kemampuan menambahkan parameter Type (T) pada class atau fungsi.
  - Dengan adanya parameter Type, maka memiliki kemampuan untuk menerima data dengan tipe yang berbeda atau tipe yang diinginkan (ditentukan diawal saat pembuatan class atau menjalankan fungsi).

  Contoh:
  - Membuat Class dengan Generics
  ```
  class Hadiah<T> {
    var isi;

    Hadiah(T i) {
        isi = i;
    }
  }
  ```
  - Menggunakan Class dengan Generics
  ```
  void main() {
    var h1 = Hadiah<String>('mobil');
    print(h1.isi);

    var h2 = Hadiah<int>(10);
    print(h2.isi);
  }
  ```

  - Membuat Fungsi dengan Generics
  ```
  void cekTipe<T>(T data) {
    print(data.runtimeType);
  }
  ```

  - Menggunakan Fungsi dengan Generics
  ```
  void main() {
    cekTipe<String>("satu");
    cekTipe<int>(1);
  }
  ```