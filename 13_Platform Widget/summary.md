- Abstract
  Memanfaatkan widget dengan gaya berbeda pada Android dan iOS.

- MaterialApp
  - Pengertian
    - Widget dasar yang mengemas seluruh widget dalam aplikasi.
    - Widget yang digunakan pada sistem Android.
    - Di-import dari package:flutter/material.dart

  - Struktur
    - Widget yang pertama kali dibuka, diletakkan pada bagian home.
    ```
    MaterialApp(
        // Mengatur tema aplikasi
        theme: ThemeData.dark(),
        // Halaman utama
        home: const HomePage(),
    );
    ```

    - Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.
    ```
    MaterialApp(
        // Mengatur tema aplikasi
        theme: ThemeData.dark(),
        // Route utama
        initialRoute: 'home',
        // Mendaftarkan halaman pada routes
        routes: {
            'home': (_) => const HomePage(),
        },
    );
    ```
- Scaffold
  - Pengertian
    - Widget dasar untuk membangun sebuah halaman pada MaterialApp.

  - Struktur
    - Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
    ```
    Scaffold(
        // Bar menu bagian atas halaman
        appBar: AppBar(...),
        // Menu bagian samping halaman
        drawer: Drawer(...),
        // Bagian utama halaman
        body: ...,
        // Menu bagian bawah halaman
        bottomNavigationBar: BottomNavigationBar(...), 
    );
    ```

- CupertinoApp
  - Pengertian
    - Widget dasar yang mengemas seluruh widget dalam aplikasi.
    - Widget yang digunakan pada sistem iOS.
    - Di-import dari package:flutter/cupertino.dart

  - Struktur
    - Variabel _themeDark dibuat untuk menyimpan tema.
    - Diperlukan karena Cupertino tidak menyediakan ThemeDark.dark() seperti pada Material.
    ```
    // Membuat dasar tema
    final _themeDark = const CupertinoThemeData.raw(
        // Mengatur brightness tema menjadi dark
        Brightness.dark,
        null,
        null,
        null,
        null,
        null,
    );
    ```

    - Widget yang pertama kali dibuka, diletakkan pada bagian home.
    ```
    CupertinoApp(
        // Mengatur tema aplikasi
        theme: _themeDark,
        // Halaman utama
        home: const HomePage(),
    );
    ```

- CupertinoPageScaffold
  - Pengertian
    - Widget dasar untuk membangun sebuah halaman pada CupertinoApp.

  - Struktur
    - Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
    ```
    CupertinoPageScaffold(
        // Bar menu bagian atas halaman
        navigationBar: CupertinoNavigationBar(...),
        // Bagian utama halaman
        child: ...,
    );
    ```