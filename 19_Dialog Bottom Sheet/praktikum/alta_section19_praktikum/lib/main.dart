import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] Photos',
      theme: ThemeData(),
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
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: darkpink,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 4,
          children: const [
            ImageBox(pic: "assets/backgrounds/1.jpg", title: "Shoes"),
            ImageBox(pic: "assets/backgrounds/2.jpg", title: "Cassette"),
            ImageBox(pic: "assets/backgrounds/3.jpg", title: "Telephone"),
            ImageBox(pic: "assets/backgrounds/4.jpg", title: "Tennis"),
          ],
        ),
      ),
    );
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
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.none),
      ),
      child: GestureDetector(
        onTap: () {
          // open bottom sheet
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => ImageScreen(photo: pic, name: title),
          );
        },
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
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: (() {
              // close bottom sheet
              Navigator.pop(context);

              // open dialog
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              photo,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // close dialog
                              Navigator.pop(context);
                            },
                            child: const Text("Close"),
                          ),
                        ],
                      ));
            }),
            child: Image.asset(
              photo,
              fit: BoxFit.fitWidth,
              height: 220,
            ),
          ),
        )
      ],
    );
  }
}
