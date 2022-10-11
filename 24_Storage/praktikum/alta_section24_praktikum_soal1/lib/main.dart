import 'package:alta_section24_praktikum_soal1/screens/register_screen.dart';
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
      title: '[ANGEL] Storage',
      theme: ThemeData(),
      home: const RegisterScreen(),
    );
  }
}
