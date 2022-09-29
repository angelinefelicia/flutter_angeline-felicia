import 'package:alta_section18_praktikum/models/post_manager.dart';
import 'package:alta_section18_praktikum/screens/post_screen.dart';
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
          create: (context) => PostManager(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Contacts',
        home: PostScreen(),
      ),
    );
  }
}
