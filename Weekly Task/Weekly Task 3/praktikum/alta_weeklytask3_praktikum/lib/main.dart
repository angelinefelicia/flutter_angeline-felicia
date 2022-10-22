import 'package:alta_weeklytask3_praktikum/screen/contactus_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/datauser_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/home_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/view_model/contactus_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

Color lightBrown = const Color.fromARGB(255, 189, 151, 137);
Color brown = Colors.brown;
Color white = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactUsViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Weekly Task 3',
        home: ContactusScreen(),
      ),
    );
  }
}
