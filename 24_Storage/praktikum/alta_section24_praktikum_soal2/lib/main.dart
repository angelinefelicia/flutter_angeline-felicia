import 'package:alta_section24_praktikum_soal2/bloc/register_bloc.dart';
import 'package:alta_section24_praktikum_soal2/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '[ANGEL] Storage',
        home: RegisterScreen(),
      ),
    );
  }
}
