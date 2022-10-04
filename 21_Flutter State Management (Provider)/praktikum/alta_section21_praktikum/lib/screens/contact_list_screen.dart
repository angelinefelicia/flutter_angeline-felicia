import 'package:alta_section21_praktikum/components/contact_item_card.dart';
import 'package:alta_section21_praktikum/models/contact_manager.dart';
import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({Key? key, required this.manager}) : super(key: key);
  final ContactManager manager;

  @override
  Widget build(BuildContext context) {
    final contactItems = manager.contactModels;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: contactItems.length,
        itemBuilder: (context, index) {
          final item = contactItems[index];
          return ContactItemCard(
            key: Key(item.name),
            contact: item,
            onPressed: () {
              manager.deleteContact(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${item.name} deleted")),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}
