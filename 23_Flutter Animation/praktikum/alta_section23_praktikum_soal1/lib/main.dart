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
      title: '[ANGEL] Animation',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Animation'),
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
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isBig = !isBig;
            });
          },
          child: AnimatedContainer(
            width: isBig ? 365 : 250,
            height: isBig ? 365 : 250,
            duration: const Duration(milliseconds: 300),
            child: Image.asset(
              "assets/images/boy.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
