import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[ANGEL] ListView in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ListView in Flutter'),
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
      body: ListView(
        children: const [
          OneList(
            name: "Angeline Felicia",
            phoneNum: "+62-852-9692-2134",
            photo: "bear.jpg",
          ),
          OneList(
            name: "Angkasa Kala Semesta",
            phoneNum: "+62-813-0098-2345",
            photo: "1.jpg",
          ),
          OneList(
            name: "Reyhan Jayaningrat",
            phoneNum: "+62-815-0298-8845",
            photo: "2.jpg",
          ),
        ],
      ),
    );
  }
}

class OneList extends StatelessWidget {
  const OneList(
      {Key? key,
      required this.name,
      required this.phoneNum,
      required this.photo})
      : super(key: key);
  final String name;
  final String phoneNum;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.none),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/backgrounds/$photo"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(3),
              ),
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Text(
                      phoneNum,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black45),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
