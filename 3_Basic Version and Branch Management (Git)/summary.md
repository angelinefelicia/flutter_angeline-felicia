- Versioning digunakan untuk mengatur versi dari source code program (melakukan pengaturan versi/perubahan dari setiap code yang dituliskan).
  Fungsi dari versioning untuk melakukan tracking terhadap perubahan apa saja yang dilakukan pada sebuah dokumen. 
  Tools pada versioning terdiri dari 3 (tiga) yaitu:
  1. Version Control System (VCS)
  2. Source Code Manager (SCM)
  3. Revision Control System (RCS)

- Git yang dibuat oleh Linus Torvalds (2005) - Linux Kernel, merupakan VCS yang bersifat Distributed (disimpan di central dan di lokal, untuk melakukan pengeditan dapat dilakukan dengan menyalin file di lokal masing-masing dan kemudian mengeditnya di lokal tersebut).
  Salah satu git hosting service adalah Github, pada Github suatu repository dapat diatur menjadi public (dapat dilihat semua orang) atau private (hanya collaborator yang dapat melihatnya).

  Tahapan dalam Staging Area:

  Working Directory --git add--> Staging Area --git commit--> Repository

  Beberapa fungsi pada git:
  1. commit: digunakan sebagai points, untuk mendata perubahan
  2. push: digunakan untuk mengirimkan data ke repository
  3. fetch: digunakan untuk mengambil data dalam server tetapi belum dimasukkan kedalam lokal
  4. pull: digunakan untuk menarik data dari perubahan yang ada pada repository kedalam lokal
  5. stash: digunakan sebagai penyimpanan sementara
  6. file .gitignore: digunakan untuk menyembunyikan file tertentu pada lokal agar tidak dimasukkan ke dalam repository.

- Branches digunakan untuk mengisolasi perubahan-perubahan apa saja pada project. Branch yang direkomendasikan adalah:
  - Master
  - Development
    - Feature A
    - Feature B
  
  Beberapa fungsi pada branch:
  1. branch: untuk melihat branch apa saja yang ada. Tanda (*) menunjukkan branch yang sedang aktif (sedang berada di branch mana)
  2. branch --list: untuk melihat semua branch
  3. branch featureA: untuk menambah branch baru, tetapi tidak pindah ke branch tersebut
  4. branch -D featureA: untuk menghapus branch
  5. branch -a: untuk melihat semua branch baik di lokal maupun di repository (origin)

  Untuk melakukan perpindahan branch dapat menggunakan "checkout featureA" sedangkan untuk membuat branch baru dan berpindah ke branch baru tersebut dapat menggunakan "checkout -b featureA". 

  Untuk melakukan merge antar branch dapat menggunakan "merge" yang memiliki 2 (dua) jenis yaitu:
  1. Fast Forward (FF)

     Membuat hasil merge menjadi oneline (satu garis).

     cth. merge --ff featureA 
  2. No Fast Forward (NFF). 

     Membuat hasil merge menjadi bercabang.
     
     cth. merge --no-ff featureA