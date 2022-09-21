- Layout
  - Digunakan untuk mengatur tata letak berbagai material seperti Image, Text, dan sebagainya.
  - Layout di dalam flutter berbentuk widget yang mengatur widget didalamnya.

- Single-Child Layout
  - Widget ini hanya memiliki satu buah child saja seperti Container, Center, SizedBox, dan sebagainya.
  - Terdiri dari:
    - Container
      - Membuat tampilan seperti sebuah box.
      - Membungkus widget lain sebagai childnya.
      - Box memiliki margin, padding, dan border.

      Contoh:
      ```
      Container(
        child: Text(teks),
      );
      ```

      Notes:
      - margin: jarak antara container dengan bagian luar container (luar).
      - padding: jarak antara child dengan container (dalam).
      - decoration: digunakan untuk styling, dapat menggunakan BoxDecoration untuk menambahkan style seperti border.
      - child: tempat untuk meletakkan/memberikan widget lain di dalam widget ini (Container).

    - Center
      - Membuat sebuah box.
      - Membungkus widget lain.
      - Memenuhi lebar dan tinggi ruang di luarnya.
      - Meletakkan widget berada di bagian tengah.

      Contoh:
      ```
      Center(
        child: Text(teks),
      );
      ```

    - SizedBox (bentuk sederhana dari Container)
      - Membuat sebuah box.
      - Membungkus widget lain.
      - Box dapat diatur lebar dan tingginya.
      - Lebih sederhana dari Container.

      Contoh:
      ```
      SizedBox(
        width: 10,
        height: 10,
        child: Text(teks),
      );
      ```

- Multi-Child Layout
  - Digunakan saat ingin menggunakan child layout lebih dari satu, dapat menggunakan children (array).
  - Terdiri dari:
    - Column: mengatur widget secara vertikal.

      Contoh:
      ```
      Column(
        children: const [
            Text(teks),
        ],
      );
      ```

    - Row: mengatur widget secara horizontal.

      Contoh:
      ```
      Row(
        children: const [
            Text(teks),
        ],
      );
      ```

    - ListView: mengatur widget dalam bentuk list, memiliki kemampuan scroll.

      Contoh:
      ```
      ListView(
        children: [
            Container(
                margin: ...
                decoration: ...
                child: ...
            ),
        ],
      );
      ```
    - GridView: mengatur widget dalam bentuk galeri.

      Contoh:
      ```
      GridView.count(
        crossAxisCount: angka,
        children: [],
      );
      ```

      Notes:
      - .count digunakan untuk menentukan jumlah grid yang akan dihasilkan.

---

- Row and Column
  - Row: untuk meletakkan widget childrennya secara horizontal.
  - Column: untuk meletakkan widget childrennya secara vertikal.

- MainAxisSize properti
  - Menentukan seberapa banyak space menempati main axis.
  - Main axis row -> horizontal.
  - Main axis column -> vertikal.
  - Ada 2 values:
    1. MainAxisSize.max: menempati semua space dari main axis.
    2. MainAxisSize.min: tidak memiliki extra space, hanya untuk childrennya saja.

- MainAxisAlignment properti
  - Digunakan Row and Column untuk memposisikan children mereka di extra space yang ada.
  - Ada 6 values:
    1. MainAxisAlignment.start
    2. MainAxisAlignment.end
    3. MainAxisAlignment.center
    4. MainAxisAlignment.spaceBetween
    5. MainAxisAlignment.spaceEvenly
    6. MainAxisAlignment.spaceAround

- CrossAxisAlignment properti
  - Digunakan Row and Column untuk memposisikan children mereka pada cross axis.
  - Cross axis row -> vertikal.
  - Cross axis column -> horizontal.
  - Ada 5 values:
    1. CrossAxisAlignment.start
    2. CrossAxisAlignment.end
    3. CrossAxisAlignment.center
    4. CrossAxisAlignment.scretch
    5. CrossAxisAlignment.baseline

- Flexible Widget -> Flexible()
  - Membungkus widget lain sehingga child dari flexible widget menjadi flexible/resizable.
  - Sangat berguna untuk membuat aplikasi yang responsif.
  - Harus berada dalam turunan parent widget Row and Column.
  - Perubahan ukuran ditentukan dengan properti fit dan flex.

  - Fit
    - Menentukan apakah flexible widget memenuhi extra space yang tersedia di main axisnya.
    - Menerima nilai values berupa FlexFit.loose (ukuran minimum) atau FlexFit.tight (ukuran maksimum).

  - Flex
    - Menentukan perbandingan ukuran dari child widgetnya.
    - Menerima nilai values berupa integer.
    - Membandingkan nilainya dengan flex properti lain.
    - [remaining space * (flex / totalOfAllFlexValues)]

- Expanded Widget -> Expanded()
  - Membungkus widget lain sehingga ukuran dari child expanded widget akan dipaksa untuk memenuhi ruang yang tersedia.
  - Sangat berguna untuk membuat aplikasi yang responsif.
  - Harus berada dalam turunan parent widget Row and Column.
  - Memiliki default value FlexFit.tight.
  - Perubahan ukuran ditentukan dengan properti flex.