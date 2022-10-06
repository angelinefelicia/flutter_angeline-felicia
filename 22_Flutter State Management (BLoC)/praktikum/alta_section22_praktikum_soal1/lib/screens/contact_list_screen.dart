import 'package:alta_section22_praktikum_soal1/components/contact_item_card.dart';
import 'package:alta_section22_praktikum_soal1/models/contact_manager.dart';
import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: ContactItemCard(),
    );
  }
}
