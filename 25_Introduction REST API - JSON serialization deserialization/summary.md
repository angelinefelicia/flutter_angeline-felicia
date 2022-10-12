- REST API (Representational State Transfer Application Programming Interface)
  - Merupakan jembatan antara server dengan klien (aplikasi).
  - Arsitektual yang memisahkan tampilan dengan proses bisnis.
  - Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request.

  - Mobile/Web/Desktop Client --GET/POST/PUT/DELETE--> REST API ----> Server

    Mobile/Web/Desktop Client <--JSON DATA-- REST API <---- Server

- HTTP
  - Merupakan protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.
  - Pola komunikasi:
    - Client mengirim Request.
    - Server mengolah dan membalas dengan memberi Response.

    - Client --Request--> Server

      Client <--Response-- Server

  - Struktur Request:
    - URL: alamat halaman yang akan diakses.
    - Method (GET/POST/PUT/DELETE): menunjukkan aksi yang diinginkan.

      GET dan POST: mengirim data

      PUT: mengubah data

      DELETE: menghapus data
      
    - Header: informasi tambahan terkait Request yang dikirimkan. (jika terdapat error, maka dapat dicek disini)
    - Body: data yang disertakan bersama Request.

  - Struktur Response:
    - Status Code: kode yang mewakili keseluruhan Response, baik sukses atau gagal. (200: sukses, 400-500: gagal)
    - Header: informasi tambahan terkait Response yang diberikan.
    - Body: data yang disertakan bersama Response.

- DIO
  - Merupakan package di pub.dev.
  - Sebagai HTTP Client.
  - Dimanfaatkan untuk melakukan REST API.

- JSON (Javascript Object Notation)
  - Umumnya digunakan pada REST API.
  - Cara penulisan data pada JSON biasanya dalam bentuk key and value.
  
- Serialisasi JSON
  - Mengubah struktur data ke bentuk JSON.
  - Map/List ----> Serialisasi ----> JSON
  - Menggunakan fungsi "jsonEncode" dari package "dart:convert".

- Deserialisasi JSON
  - Mengubah bentuk JSON ke struktur data.
  - JSON ----> Deserialisasi ----> Map/List
  - Menggunakan fungsi "jsonDecode" dari package "dart:convert".