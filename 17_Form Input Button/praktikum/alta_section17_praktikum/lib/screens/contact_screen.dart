import 'package:alta_section17_praktikum/models/contact_manager.dart';
import 'package:alta_section17_praktikum/screens/contact_item_screen.dart';
import 'package:alta_section17_praktikum/screens/empty_contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contact_list_screen.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = Color.fromARGB(255, 255, 171, 168);

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
      ),
      body: buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final manager = Provider.of<ContactManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactItemScreen(
                onCreate: (contact) {
                  manager.addContact(contact);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
        backgroundColor: darkpink,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContactScreen() {
    return Consumer<ContactManager>(
      builder: (context, manager, child) {
        if (manager.contactModels.isNotEmpty) {
          return ContactListScreen(
            manager: manager,
          );
        } else {
          return const EmptyContactScreen();
        }
      },
    );
  }
}
