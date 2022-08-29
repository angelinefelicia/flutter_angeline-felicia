- Fungsi lanjutan
  - Anonymous Function: tidak memiliki nama, berfungsi sebagai data di parameter.
    Contoh:
    ```
    // var hello merupakan variabel
    // () { } merupakan anonymous function
    var hello = () {
        print('hello);
    }

    var jumlah = (int a, int b) {
        return a+b;
    }

    void main() {
        // memanggil anonymous function
        hello();
        print(jumlah(1,2));
    }
    ```

  - Arrow Function: dapat memiliki nama/tidak, berisi 1 data (dari proses maupun data statis), nilai return fungsi ini diambil dari data tersebut. 
    Contoh:
    ```
    var hello = () => print('hello');
    var jumlah = (int a, int b) => a+b;
    ```

  - Async - Await
    - Menjalankan beberapa proses secara asynchronous tanpa perlu menunggu proses lainnya selesai.
    - Proses tersebut ditulis dalam bentuk fungsi.
    - Await akan menunggu hingga proses async selesai. 

  - Tipe data Future
    - Berjalan secara asynchronous. 
    - Data yang dapat ditunggu.
    - Membawa data return dari fungsi async.
    - Membuat suatu proses berjalannya fungsi dapat berdurasi. 

  - Collection (kumpulan data pada satu tempat)
    Merupakan struktur data yang lebih canggih untuk menangani suatu masalah yang lebih kompleks, menyimpan kumpulan data/object lain pada satu tempat.

    1. List: menyimpan data secara berbaris dan tiap data memiliki index.
       Contoh:
       ```
       void main() async {
            // membuat list
            var scores = [];
            // menambah data
            scores.add(40);
            scores.add(60);
            scores.add(80);
            print(scores);

            // mengambil data berdasarkan index
            print(scores[0]);
            print(scores[1]);
            print(scores[2]);
       }
       ```

       Penggunaan for in
       Contoh:
       ```
       void main() async {
            // membuat list + data
            var scores = [40, 60, 80];
            print(scores);

            // mengambil seluruh data pada list
            for (var score in scores){
                print(score);
            }
       }
       ```
    
    2. Map: menyimpan data secara key-value, key berguna selayaknya index pada list. 
       Contoh:
       ```
       void main() async {
            // membuat map
            var student = {};
            // menambah data
            student['name'] = 'Alex';
            student['age'] = 16;
            print(student);

            // mengambil data berdasarkan key
            print(student['name']);
            print(student['age']);
       }
       ```

       Penggunaan for in
       Contoh:
       ```
       void main() async {
            // membuat map beserta data-datanya
            var student = {
                'name' : 'Alex',
                'age' : 16
            };
            print(student);

            // mengambil seluruh data pada list
            for (var key in student.keys){
                print(student[key]);
            }
       }
       
    
