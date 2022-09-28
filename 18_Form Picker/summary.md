- Deskripsi
  - User input dapat digunakan sebagai interaksi antara aplikasi dan user.
  - Widget-widget ini digunakan untuk mengumpulkan input dan feedback dari user.

- Date Picker
  - Widget yang digunakan dimana user dapat memasukkan tanggal, seperti tanggal lahir, pemesanan, reservasi, jadwal, dan sebagainya.
  - Cara:
    - Menggunakan fungsi bawaan flutter: showDatePicker.
    - Fungsi showDatePicker memiliki tipe data Future.
    - Menampilkan dialog material design date picker.
      ```
      final selectDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(currentDate.year + 5),
      );
      ```
    - Menambahkan packages intl di pubspec.yaml.
    - Mempersiapkan variabel.
    - Membangun UI.
    - Menambahkan fungsi showDatePicker di dalam onPressed pada button.
    - Memanggil fungsi setState di dalam onPressed.

- Color Picker
  - Widget yang digunakan dimana user dapat memiliki color.
  - Dapat dipakai untuk berbagai macam kondisi.
  - Cara:
    - Menggunakan packages flutter_colorpicker.
    - Menambahkan packages flutter_colorpicker di pubspec.yaml.
    - Mempersiapkan variabel.
    - Membangun UI.
    - Menambahkan fungsi showDialog dalam onPressed dengan return widget AlertDialog.
    - Import packages flutter_colorpicker di dart.
    - Membuat kode untuk penggunaan packages flutter_colorpicker.
      ```
      return AlertDialog(
        title: const Text('Pick your Color'),
        content: BlockPicker(
            pickerColor: _currentColor,
            onColorChanged: (color) {
                setState(() {
                    _currentColor: color;
                });
            },
        ),
      );
      ```

- File Picker
  - Widget yang digunakan dimana user dapat mengakses storage.
  - Dapat memilih dan membuka file.
  - Cara:
    - Menggunakan packages file_picker dan open_file.
    - Menambahkan packages file_picker dan open_file di pubspec.yaml.
    - Import packages file_picker dan open_file di dart.
    - Membangun UI.
    - Menambahkan fungsi untuk mengexplore dan memilih files dari storage.
      ```
      void _pickFile() async{
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return ;
      }
      ```
    - Memanggil fungsi _pickFile dalam onPressed.
    - Membuat fungsi untuk membuka files yang sudah dipilih.
      ```
      void _openFile(PlatformFile file){
        OpenFile.open(file.path);
      }
      ```
    - Mengambil file dari object result dan memanggil fungsi _openFile dalam fungsi _pickFile.
      ```
      // Mendapatkan file dari object result
      final file = result.files.first;
      _openFile(file);
      ```