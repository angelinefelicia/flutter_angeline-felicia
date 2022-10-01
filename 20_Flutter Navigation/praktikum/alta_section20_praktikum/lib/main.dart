import 'package:alta_section20_praktikum/screens/contact_item_screen.dart';
import 'package:alta_section20_praktikum/screens/contact_list_screen.dart';
import 'package:alta_section20_praktikum/screens/contact_screen.dart';
import 'package:alta_section20_praktikum/screens/empty_contact_screen.dart';
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Contacts',

        // navigator tanpa named
        // home: ContactScreen(),

        // navigator dengan named
        initialRoute: '/',
        routes: {
          '/': (_) => const ContactScreen(),
          '/contactItem': (_) => const ContactItemScreen(),
        },
      ),
    );
  }
}
