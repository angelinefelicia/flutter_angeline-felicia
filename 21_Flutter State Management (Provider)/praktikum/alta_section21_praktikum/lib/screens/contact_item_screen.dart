import 'package:alta_section21_praktikum/models/contact_model.dart';
import 'package:alta_section21_praktikum/screens/contact_screen.dart';
import 'package:flutter/material.dart';

class ContactItemScreen extends StatefulWidget {
  const ContactItemScreen({Key? key, required this.onCreate}) : super(key: key);
  final Function(ContactModel) onCreate;

  @override
  State<ContactItemScreen> createState() => _ContactItemScreenState();
}

class _ContactItemScreenState extends State<ContactItemScreen> {
  final formKey = GlobalKey<FormState>();

  final _contactNameController = TextEditingController();
  String _contactName = '';

  final _contactNumController = TextEditingController();
  String _contactNum = '';

  @override
  void initState() {
    super.initState();
    _contactNameController.addListener(() {
      setState(() {
        _contactName = _contactNameController.text;
      });
    });
    _contactNumController.addListener(() {
      setState(() {
        _contactNum = _contactNumController.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _contactNameController.dispose();
    _contactNumController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text("Create New Contact", style: TextStyle(fontSize: 20)),
        backgroundColor: darkpink,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.none),
        ),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (String? value) =>
                      value == '' ? "Please enter a name" : null,
                  controller: _contactNameController,
                  decoration: const InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value) =>
                      value == '' ? "Please enter a number" : null,
                  controller: _contactNumController,
                  decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: darkpink,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final contactItem = ContactModel(
                            name: _contactNameController.text,
                            num: _contactNumController.text);
                        widget.onCreate(contactItem);
                      }
                    },
                    child: const Text("SUBMIT")),
              ],
            )),
      ),
    );
  }
}
