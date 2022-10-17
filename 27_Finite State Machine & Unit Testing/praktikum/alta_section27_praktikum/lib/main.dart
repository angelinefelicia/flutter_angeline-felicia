import 'package:alta_section27_praktikum/screen/contact/contact_screen.dart';
import 'package:alta_section27_praktikum/screen/contact/contact_view_model.dart';
import 'package:alta_section27_praktikum/screen/food/food_screen.dart';
import 'package:alta_section27_praktikum/screen/food/food_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Unit Test',
        home: FoodScreen(),
      ),
    );
  }
}
