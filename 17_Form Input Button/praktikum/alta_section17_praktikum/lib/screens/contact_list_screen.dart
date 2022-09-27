import 'package:alta_section17_praktikum/components/contact_item_card.dart';
import 'package:alta_section17_praktikum/models/contact_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({Key? key, required this.manager}) : super(key: key);
  final ContactManager manager;

  @override
  Widget build(BuildContext context) {
    final contactItems = manager.contactModels;

    return Padding(
      padding: const EdgeInsets.all(16),
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
            height: 16,
          );
        },
      ),
    );
  }
}
