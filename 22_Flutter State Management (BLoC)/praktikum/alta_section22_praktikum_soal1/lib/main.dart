import 'package:alta_section22_praktikum_soal1/bloc/contact_bloc.dart';
import 'package:alta_section22_praktikum_soal1/screens/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Contacts',
        home: ContactScreen(),
      ),
    );
  }
}
