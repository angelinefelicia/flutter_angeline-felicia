import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] Weekly Task 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color lightBrown = const Color.fromARGB(255, 189, 151, 137);
Color brown = Colors.brown;
Color white = Colors.white;

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String name = '';
  String email = '';
  String message = '';

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
      appBar: AppBar(
        title: const Text("Bake Bear"),
        backgroundColor: brown,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(color: white),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left: 5),
                    child: Image.asset(
                      "assets/images/bear1.png",
                      width: 122,
                      height: 190,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 56, 48)),
                      ),
                      Text(
                        "",
                        style: TextStyle(fontSize: 3),
                      ),
                      Text("This is Bake Bear."),
                      Text("We provide a lot of recipes for baking."),
                      Text(
                        '"Follow our recipes, enjoy to bake"',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 400),
              decoration: BoxDecoration(color: white),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left: 5),
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
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (String? value) =>
                          value == '' ? "This field is required!" : null,
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: white),
                      onPressed: () {
                        setState(() {
                          name = _nameController.text;
                          email = _emailController.text;
                          message = _messageController.text;
                        });
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(name),
                    Text(email),
                    Text(message),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
