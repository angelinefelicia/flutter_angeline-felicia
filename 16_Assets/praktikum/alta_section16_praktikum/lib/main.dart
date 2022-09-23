import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] Photos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Photos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: const [
            // Image from internet
            // ImageBox(
            //   pic:
            //       "https://photo-cdn2.icons8.com/O8aWPSPYjjfltM-Y2AQaV0pSI9KcVkRS7rj1KwcGlsc/rs:fit:1606:1072/wm:1:re:0:0:0.65/wmid:moose/q:98/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvOTg0LzhjMmJj/ODRlLTFhYTItNDhk/Yy04NmQzLWY0NDZm/YTlmZDhlYS5qcGc.jpg",
            //   title: "Images 1",
            // ),
            // ImageBox(
            //   pic:
            //       "https://photo-cdn2.icons8.com/XPKrYGT-C1nHMt-2uhx2_SJgJ9H_P-bvlzlUGbLALnY/rs:fit:1606:1072/wm:1:re:0:0:0.65/wmid:moose/q:98/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvNDY0L2UzZjc5/MDhjLTBhODQtNGM5/MS1iYWQ4LTUwOGM5/MmI4MzBjMy5qcGc.jpg",
            //   title: "Images 2",
            // ),
            // ImageBox(
            //   pic:
            //       "https://photo-cdn2.icons8.com/Xh-7spuvLV7q4XU_4Dq4-ga_2Q67BORSBXH4EiWKtpA/rs:fit:1606:1072/wm:1:re:0:0:0.65/wmid:moose/q:98/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMTY1L2EwNDI4/OTkwLWIwZWQtNDQ2/NC05NjgxLWUwODY4/MzE5MDM1NC5qcGc.jpg",
            //   title: "Images 3",
            // ),
            // ImageBox(
            //   pic:
            //       "https://photo-cdn2.icons8.com/dvo97QPMxPvs6FuQ-4M-YiOlU63HSatk_Dj-hUcin5E/rs:fit:1605:1072/wm:1:re:0:0:0.65/wmid:moose/q:98/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvNTYxLzU3Mjhj/MzUxLTE3OTItNDQ0/Ni1iZTY5LWQwYmMw/YjU3NWMyZi5qcGc.jpg",
            //   title: "Images 4",
            // ),

            // Image from assets
            ImageBox(pic: "assets/backgrounds/1.jpg", title: "Images 1"),
            ImageBox(pic: "assets/backgrounds/2.jpg", title: "Images 2"),
            ImageBox(pic: "assets/backgrounds/3.jpg", title: "Images 3"),
            ImageBox(pic: "assets/backgrounds/4.jpg", title: "Images 4"),
            ImageBox(pic: "assets/backgrounds/1.jpg", title: "Images 1"),
            ImageBox(pic: "assets/backgrounds/2.jpg", title: "Images 2"),
            ImageBox(pic: "assets/backgrounds/3.jpg", title: "Images 3"),
            ImageBox(pic: "assets/backgrounds/4.jpg", title: "Images 4"),
            ImageBox(pic: "assets/backgrounds/1.jpg", title: "Images 1"),
            ImageBox(pic: "assets/backgrounds/2.jpg", title: "Images 2"),
            ImageBox(pic: "assets/backgrounds/3.jpg", title: "Images 3"),
            ImageBox(pic: "assets/backgrounds/4.jpg", title: "Images 4"),
          ],
        ));
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({Key? key, required this.pic, required this.title})
      : super(key: key);
  final String pic;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ImageScreen(
                      photo: pic,
                      name: title,
                    )),
          );
        },

        // from internet
        // child: Image.network(
        //   pic,
        //   fit: BoxFit.cover,
        // ),

        // from assets
        child: Image.asset(
          pic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key, required this.photo, required this.name})
      : super(key: key);
  final String photo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: SizedBox(
          width: 800,
          height: 800,

          // from internet
          // child: Image.network(
          //   photo,
          //   fit: BoxFit.fitWidth,
          // ),

          // from assets
          child: Image.asset(
            photo,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
