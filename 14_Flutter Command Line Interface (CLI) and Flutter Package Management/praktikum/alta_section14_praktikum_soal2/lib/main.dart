import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              "Barcode",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 193, 5, 5)),
            ),
            const Divider(
              height: 10.0,
              color: Colors.white10,
            ),
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'Alterra Academy',
              width: 200,
              height: 80,
            ),
            const Divider(
              height: 10.0,
              color: Colors.white10,
            ),
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'Flutter Asik',
              width: 200,
              height: 80,
            ),
            const Divider(
              height: 10.0,
              color: Colors.white10,
            ),
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'Angeline Felicia',
              width: 200,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
