import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[ANGEL] Flutter CLI and Packages Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter CLI and Packages Management'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Chip and Badge",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 193, 5, 5)),
            ),
            const Divider(
              height: 10.0,
              color: Colors.white10,
            ),
            const Chip(
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.deepPurple,
              label: Text('BADGE', style: TextStyle(color: Colors.white)),
            ),
            const Divider(
              height: 10.0,
              color: Colors.white10,
            ),
            Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.deepPurple,
              borderRadius: BorderRadius.circular(18),
              badgeContent:
                  const Text('BADGE', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
