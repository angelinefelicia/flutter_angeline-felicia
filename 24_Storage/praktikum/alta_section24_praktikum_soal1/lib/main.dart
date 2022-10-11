import 'package:alta_section24_praktikum_soal1/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alta_section24_praktikum_soal1/models/registerData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<RegisterData>(
            create: (context) => RegisterData(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '[ANGEL] Storage',
          home: RegisterScreen(),
        ));
  }
}
