import 'package:alta_weeklytask3_praktikum/main.dart';
import 'package:alta_weeklytask3_praktikum/model/contactus_model.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/appbar.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/drawer.dart';
import 'package:alta_weeklytask3_praktikum/screen/view_model/contactus_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({Key? key}) : super(key: key);

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      appBar: appbar(),
      drawer: const DrawerItem(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            contactusSection(),
            Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    // Form Username
                    TextFormField(
                      validator: (String? value) =>
                          value == '' ? "This field is required!" : null,
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Form Email
                    TextFormField(
                      validator: (val) => val!.isEmpty || !val.contains("@")
                          ? "Enter a valid email!"
                          : null,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Form Message
                    TextFormField(
                      maxLines: 8,
                      validator: (String? value) =>
                          value == '' ? "This field is required!" : null,
                      controller: _messageController,
                      decoration: const InputDecoration(
                        labelText: 'Message',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Submit Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: white),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // State Management
                          final data = Provider.of<ContactUsViewModel>(context,
                              listen: false);

                          final contactusData = ContactusModel(
                              name: _nameController.text,
                              email: _emailController.text,
                              message: _messageController.text);

                          data.addContactus(contactusData);

                          // Modal
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) => NewUserDataModal(
                                name: contactusData.name,
                                email: contactusData.email,
                                message: contactusData.message),
                          );

                          _nameController.text = '';
                          _emailController.text = '';
                          _messageController.text = '';
                        }
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Color.fromARGB(255, 80, 56, 48),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contactusSection() {
    return Container(
      decoration: BoxDecoration(color: white),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/bear1.png",
              width: 122,
              height: 190,
            ),
          ),
          Column(
            children: const [
              Text(
                "CONTACT US",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 80, 56, 48)),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 3),
              ),
              Text("Hello Customers,"),
              Text("Please fill the form below to get connect"),
              Text("with us and get our newest recipes."),
            ],
          ),
        ],
      ),
    );
  }
}

class NewUserDataModal extends StatelessWidget {
  const NewUserDataModal(
      {Key? key,
      required this.name,
      required this.email,
      required this.message})
      : super(key: key);
  final String name;
  final String email;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Email: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  TextSpan(
                    text: email,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Message: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              message,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
