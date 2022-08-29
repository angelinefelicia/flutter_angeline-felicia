- Dart
  Merupakan bahasa pemrograman open source yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat. Dart dikembangkan oleh Google (Lars Bak dan Kasper Lund) pada tahun 2011. Tujuan awal bahasa ini untuk menggantikan JavaScript (karena dinilai memiliki banyak kelemahan). Dart semakin populer digunakan semenjak adanya framework Flutter yang memakai bahasa pemrograman Dart. Dart digunakan untuk membuat aplikasi yang berjalan di sisi klien (front-end) seperti Web, Desktop, dan Mobile.

  Kenapa harus Dart?
  - Type Safe, menjamin konsistensi tipe data.
  - Null Safety, memberi keamanan dari data bernilai hampa (null).
  - Rich Standard Library, banyak dukungan library internal.
  - Multiplatform, mampu berjalan di berbagai jenis perangkat.

  - Fungsi Main (top level function), merupakan bagian yang dijalankan pertama kali, dapat memiliki tipe data void atau int, memiliki nama main. 
    Contoh:
    void main(){
        print('Hello');
    }

    Ket: 
    - print digunakan untuk menampilkan data ke layar.
    - void, tidak mengembalikan nilai apa-apa.

- Komentar
  Merupakan baris kode yang tidak dijalankan dengan tujuan untuk memberi catatan pada kode (dokumentasi) atau mencegah perintah dijalankan. Komentar dapat diberikan dengan 2 cara yaitu:
  1. // = untuk memberikan komentar pada satu line
  2. /*    */ = untuk memberikan komentar pada beberapa line

- Variabel
  Digunakan untuk menyimpan data, memiliki nama yang dapat dipanggil dan digunakan, memiliki tipe data. 
  Contoh:
  int score;

  Ket:
  - int merupakan tipe data, score merupakan nama.
  - variabel masih bernilai 0 (null).
  - pemberian value pada variabel dapat menggunakan tanda sama dengan (=).
  - diakhiri dengan titik koma (;).

- Konstanta
  Digunakan untuk menyimpan data, memiliki nama, memiliki tipe data, nilai tetap (tidak dapat diubah)
  Contoh:
  final score = 90;

- Tipe data
  Dart bersifat statically typed (wajib untuk menetapkan tipe data setiap mendeklarasikan suatu variabel) dan memiliki primitive data type yaitu int (bilangan bulat), double (bilangan pecahan/desimal), bool (true/false), dan String (teks). 
  Contoh:
  int : 18
  double : 18.8
  bool : true / false
  String : 'Hello'

- Operator
  Digunakan untuk operasi pengolahan data, data yang dikelola disebut sebagai operand. Jenis-jenis operator yaitu:

  1. Arithmetic = untuk perhitungan matematis.
     - + (tambah)
     - - (kurang)
     - * (kali)
     - / (bagi)
     - % (mod)

  2. Assignment = untuk memberi nilai pada variabel.
     =, +=, -=, *=, /=, %=

  3. Comparison = untuk membandingkan kesetaraan nilai.
     ==, <, <=, >, >=
     Hasil dari operator comparison akan mengembalikan nilai boolean (true/false).

  4. Logical = untuk menggabungkan beberapa kondisi.
     && (AND), || (OR), ! (NOT) 
