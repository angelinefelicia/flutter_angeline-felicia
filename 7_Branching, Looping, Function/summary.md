- Pengambilan Keputusan

  Menentukan alur program pada kondisi tertentu.

  - IF
    - Memerlukan nilai bool (dari operator logical atau comparison). 
    - Menjalankan bagian proses jika nilai bool bernilai true. 

    Contoh:
    ```
    void main() {
        var usia = 18;
        // jika usia kurang dari 20, maka ditampilkan remaja pada layar. 
        if (usia < 20) {
            print('Remaja');
        }
    }
    ```
  - IF-ELSE
    - Berjalan dengan IF.
    - Menambah alternatif jika nilai bool adalah false. 

    Contoh:
    ```
    void main() {
        var usia = 18;
        // jika usia kurang dari 20, maka ditampilkan "remaja" pada layar. 
        if (usia < 20) {
            print('Remaja');
        } 
        // jika tidak, maka ditampilkan "tidak memiliki golongan" pada layar. 
        else {
            print('tidak memiliki golongan');
        }
    }
    ```
  - ELSE-IF
    - Berjalan dengan IF.
    - Menambah alternatif jika nilai bool adalah false.
    - Menambah pengujian nilai bool lain. 

    Contoh:
    ```
    void main() {
        var usia = 18;
        // jika usia kurang dari 20, maka ditampilkan remaja pada layar. 
        if (usia < 20) {
            print('Remaja');
        }
        // jika usia kurang dari 40, maka ditampilkan "dewasa" pada layar.
        else if (usia < 40) {
            print('Dewasa');
        }
        // jika tidak, maka ditampilkan "tidak memiliki golongan" pada layar. 
        else {
            print('tidak memiliki golongan');
        }
    }
    ```

- Perulangan

  Menjalankan proses berulang kali. 

  - For
    - Diketahui berapa kali perulangan terjadi.
    - Memerlukan nilai awal.
    - Memerlukan nilai bool, jika true maka perulangan dilanjutkan.
    - Memerlukan pengubah nilai. 

    Contoh:
    ```
    void main() {
        // var i = 0 merupakan nilai awal
        // i < 10 merupakan nilai bool
        // i += 1 merupakan pengubah nilai awal
        for(var i = 0; i < 10; i += 1){
            // menampilkan nilai i tiap perulangan terjadi
            print(i);
        }
    }
    ```

  - While
    - Tidak diketahui berapa kali perulangan terjadi.
    - Memerlukan nilai bool, jika true maka perulangan dilanjutkan.

    Contoh:
    ```
    void main() {
        var i = 0;
        // i < 10 merupakan nilai bool
        while(i < 10) {
            // menampilkan nilai i tiap perulangan terjadi
            print(i);
            i++;
        }
    }
    ```

  - Do-While
    - Mengubah bentuk While.
    - Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true. 

    Contoh:
    ```
    void main() {
        var i = 0;
        do {
            // menampilkan nilai i tiap perulangan terjadi
            print(i);
            i++;
        // i < 10 merupakan nilai bool
        } while(i < 10);
    }
    ```
- Break dan Continue

  Cara lain menghentikan perulangan.

  Deskripsi:
  - Perulangan menggunakan nilai bool untuk lanjut/berhenti.
  - Break dan continue dapat menghentikan perulangan dengan mengabaikan nilai bool.
  - Continue dapat menghentikan satu kali proses.

  Perbedaan:
  - Break digunakan untuk menghentikan seluruh proses perulangan.
  - Continue digunakan untuk menghentikan satu kali proses perulangan. 

  Contoh:
  - Break
    ```
    void main() {
        for(var i = 0; true; i++) {
            if (i == 10) {
                // jika i adalah 10, perulangan dihentikan
                break;
            }
            print(i);
        }
    }
    ```
  
  - Continue
    ```
    void main() {
        for(var i = 0; i < 10; i += 1) {
            if (i == 5) {
                // jika i adalah 5, perulangan dilewati
                continue;
            }
            print(i);
        }
    }
    ```
- Fungsi

  Kumpulan kode yang dapat digunakan ulang.

  Deskripsi:
  - Kumpulan perintah.
  - Dapat digunakan berkali-kali.
  - Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah.

  Membuat Fungsi:
  ```
  void halo() {
    print('halo');
  }
  ```

  Memanggil Fungsi:
  ```
  void main() {
    halo();
  }
  ```

  Fungsi dengan Parameter (mengirim data saat menjalankan fungsi):
  ```
  void tampil(String teks) {
    print(teks);
  }

  void main() {
    tampil('halo');
  }
  ```

  Fungsi dengan Return (memberi nilai pada fungsi saat dipanggil):
  ```
  int jumlah(int a, int b) {
    return a + b;
  }

  void main() {
    var hasil = jumlah(1, 2);
    print(hasil);
  }
  ```
