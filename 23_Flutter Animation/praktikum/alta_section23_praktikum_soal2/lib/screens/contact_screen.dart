import 'package:alta_section23_praktikum_soal2/models/contact_manager.dart';
import 'package:alta_section23_praktikum_soal2/screens/contact_item_screen.dart';
import 'package:alta_section23_praktikum_soal2/screens/empty_contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contact_list_screen.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

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
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return ContactItemScreen(
                  onCreate: (contact) {
                    manager.addContact(contact);
                    Navigator.pop(context);
                  },
                );
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: 0.0, end: 1.0);

                return FadeTransition(
                  opacity: animation.drive(tween),
                  child: child,
                );
              },
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
