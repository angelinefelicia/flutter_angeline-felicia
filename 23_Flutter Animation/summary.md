- Animation
  - Dengan menambahkan animasi membuat aplikasi kita terlihat hidup.
  - Widget yang bergerak menambah daya tarik.
  - Pergerakan dari kondisi A (nilai awal) ke kondisi B (nilai akhir).

- Implicit Animation
  - Versi animasi dari widget yang sudah ada.
  - Sehingga tinggal memakai widget yang sudah ada tersebut dengan property yang dimilikinya agar dapat membuat animasi.

  Contoh:
  ```
  bool isBig = false;

  // widget bawaan dari flutter
  AnimatedContainer(
    width: isBig? 200 : 100,
    height: isBig? 200: 100,
    color: Colors.red,
    // property wajib
    duration: const Duration(milliseconds: 300),
  );
  ```

- Transition
  - Animasi yang terjadi saat perpindahan halaman.
  - Dilakukan pada bagian Navigator.push().

  Contoh:
  ```
  Navigator.of(context).push(
    PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
            return const AboutScreen();
        },

        transitionBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);

            return SlideTransition(
                position: animation.drive(tween),
                child: child,
            );
        },
    ),
  );
  ```

- Transition yang Umum
  - FadeTransition: halaman muncul dengan efek redup menuju ke tampak jelas secara penuh.
    ```
    final tween = Tween(begin: 0.0, end: 1.0);

    return FadeTransition(
        opacity: animation.drive(tween),
        child: child,
    );
    ```
  - ScaleTransition: halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan.
    ```
    final tween = Tween(begin: 0.0, end: 1.0);

    return ScaleTransition(
        scale: animation.drive(tween),
        child: child,
    );
    ```