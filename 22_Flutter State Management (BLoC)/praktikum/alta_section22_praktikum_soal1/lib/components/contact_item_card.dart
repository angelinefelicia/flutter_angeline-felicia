import 'package:alta_section22_praktikum_soal1/models/contact_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactItemCard extends StatelessWidget {
  const ContactItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          35,
        ),
      ),
      child: ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage("assets/images/5.png")),
        title: Text(
          'ya',
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          'bole',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
