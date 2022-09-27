import 'package:alta_section17_praktikum/contact_details.dart';
import 'package:alta_section17_praktikum/screens/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/contact_manager.dart';

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
          create: (context) => ContactManager(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Contacts',
        home: ContactScreen(),
      ),
    );
  }
}
