- Form
  - Berinteraksi dengan pengguna.
  - Menerima isian data dari pengguna.
  - Isian data dapat lebih dari satu.

  Membuat Form:
  - Menggunakan StatefulWidget.
  - Keadaan form akan disimpan menggunakan GlobalKey<FormState>.

  Contoh:
  ```
  // property
  var formKey = GlobalKey<FormState>();

  // build
  Form(
    key: formKey,
    child: inputWidgets,
  );
  ```

- Input
  - TextField
    - Menerima isian data dari pengguna.
    - Isian data dapat lebih dari satu.

    Membuat TextField:
    - Data diambil menggunakan TextEditingController.
    - Isian data berupa teks.

    Contoh:
    ```
    // property
    var inputController = TextEditingController();

    // build
    TextField(
        controller: inputController,
    )
    ```

  - Radio
    - Memberi opsi pada pengguna.
    - Hanya dapat memilih 1 opsi.

    Membuat Radio:
    - Data diambil menggunakan property dengan tipe data sesuai value pada radio.

    Contoh:
    ```
    // property
    var radioValue = '';

    // build
    Radio<String>(
        value: 'Laki-laki',
        groupValue: radioValue,
        onChanged: (String? value){
            setState(() {
                radioValue = value ?? '';
            });
        },
    );
    ```

  - Checkbox
    - Memberi opsi pada pengguna.
    - Dapat memilih beberapa opsi.

    Membuat Checkbox:
    - Data diambil menggunakan property bertipe bool.

    Contoh:
    ```
    // property
    var checkValue = false;

    // build
    Checkbox(
        value: checkValue,
        onChanged: (bool? value){
            setState(() {
                checkValue = value ?? false;
            });
        },
    );
    ```

  - Dropdown Button
    - Memberi opsi pada pengguna.
    - Hanya dapat memilih 1 opsi.
    - Opsi tidak ditampilkan diawal, hanya ditampilkan jika ditekan.

    Membuat Dropdown Button:
    - Data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem.

    Contoh:
    ```
    // property
    var dropdownValue = 0;

    // build
    DropdownButton(
        value: dropdownValue,
        onChanged: (int? value){
            setState(() {
                dropdownValue = value ?? 0;
            });
        },
        items: const [
            DropdownMenuItem(
                value: 0,
                child: Text('Pilih...'),
            ),
            DropdownMenuItem(
                value: 0,
                child: Text('Satu'),
            ),
            DropdownMenuItem(
                value: 0,
                child: Text('Dua'),
            ),
            DropdownMenuItem(
                value: 0,
                child: Text('Tiga'),
            ),
        ]
    );
    ```

- Button
  - Bersifat seperti tombol.
  - Dapat melakukan sesuatu saat ditekan.

  - Elevated Button
    - Tombol yang timbul.
    - Jika ditekan, akan menjalankan onPressed.

    Contoh:
    ```
    ElevatedButton(
        child: const Text('Submit'),
        onPressed: () {},
    );
    ```

  - Icon Button
    - Tombol yang hanya menampilkan icon.
    - Jika ditekan, akan menjalankan onPressed.

    Contoh:
    ```
    IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
    )
    ```