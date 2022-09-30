- Navigation 
  - Digunakan untuk berpindah dari halaman satu ke halaman lain.

  - Perpindahan halaman menggunakan Navigator.push() => GO

    BACK <= kembali ke halaman sebelumnya menggunakan Navigator.pop()

  - Navigator merupakan widget yang mengelola tumpukan object roots.
    ```
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const NewScreen()),
    );
    ```

  - Mengirim data ke halaman baru.

    Menggunakan parameter pada contructor halaman.
    ```
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const NewScreen(parameter: 'Here')),
    );
    ```
    ```
    const NewScreen({Key? key, required this.parameter}) : super(key: key);
    final String parameter;
    ```

- Navigation dengan Named Routes
  - Tiap halaman memiliki alamat yang disebut route.

  - Perpindahan halaman menggunakan Navigator.pushNamed() => GO

    BACK <= kembali ke halaman sebelumnya menggunakan Navigator.pop()

  - Mendaftarkan Route
    - Tambahkan initialRoute dan routes pada MaterialApp.
    - Tiap route adalah fungsi yang membentuk halaman.
      ```
      MaterialApp(
        // menentukan halaman yang pertama kali dibuka
        initialRoute: '/',

        // daftar halaman yang dapat dibuka
        routes: {
            '/': (_) => const HomeScreen(),
            '/about': (_) => const AboutScreen(),
        },
      );
      ```
 
    - Perpindahan halaman
      ```
      Navigator.of(context).pushNamed('/about');
      ```

    - Mengirim data ke halaman baru
      
      Menggunakan arguments saat melakukan pushNamed.
      ```
      Navigator.of(context).pushNamed(
        '/about',
        arguments: 'Here',
      );
      ```
      ```
      final parameter = ModalRoute.of(context)!.settings.arguments as String;
      ```