UI Testing
- Tahapan penting yang digunakan untuk menemukan bug atau masalah pada aplikasi kita.
- Merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.
- Di Flutter, disebut juga sebagai widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

- Keuntungan: 
  - Memastikan seluruh widget memberi tampilan yang sesuai.
  - Memastikan seluruh interaksi dapat diterima dengan baik.
  - Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

- Melakukan UI Testing:
  - Instalasi package testing
    - biasanya sudah otomatis ada saat project flutter di-create.
    - pada pubspec.yaml -> dev_dependencies -> flutter_test: 

  - Penulisan script testing
    - Ditulis pada folder test.
    - Nama file harus diikuti "_test.dart".
    - Tiap file berisi fungsi main() -> script testing.
    - Tiap scenario pengujian disebut test case.

  - Script testing
    - Test case diawali dengan "testWidgets" dan diberi judul.
    - Simulasi proses mengaktifkan halaman AboutScreen.
    - Memeriksa apakah di halaman tersebut terdapat teks "About Screen".

  Contoh:
  ```
  void main() {
    testWidgets('Judul halaman harus About Screen', (WidgetTester tester) async) {
        await tester.pumpWidget(
            const MaterialApp(
                home: AboutScreen(),
            ),
        );

        expect(find.text('About Screen'), findsOneWidget);
    }
  }
  ```

  - Menjalankan testing
    - Perintah "flutter test" akan menjalankan seluruh file test yang dibuat.
    - Hasil: lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil.
    - Jika hasil dari testing gagal, maka akan ditampilkan pesan penyebab gagalnya.