import 'package:alta_section24_praktikum_soal1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  final _registerNameController = TextEditingController();
  final _registerEmailController = TextEditingController();
  final _registerNumController = TextEditingController();
  final _registerPassController = TextEditingController();

  late SharedPreferences registerData;
  late bool newUser;

  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    checkRegister();
    _passwordVisible = false;
  }

  void checkRegister() async {
    registerData = await SharedPreferences.getInstance();
    newUser = registerData.getBool('isRegister') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _registerNameController.dispose();
    _registerEmailController.dispose();
    _registerNumController.dispose();
    _registerPassController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: darkpink,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (String? value) =>
                      value == '' ? "This field is required" : null,
                  controller: _registerNameController,
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
                      value == '' ? "This field is required" : null,
                  controller: _registerEmailController,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value) =>
                      value == '' ? "This field is required" : null,
                  controller: _registerNumController,
                  decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value) =>
                      value == '' ? "This field is required" : null,
                  controller: _registerPassController,
                  obscureText: !_passwordVisible,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: darkpink),
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();
                      String name = _registerNameController.text;
                      String email = _registerEmailController.text;

                      if (isValidForm) {
                        registerData.setBool('isRegister', false);
                        registerData.setString('name', name);
                        registerData.setString('email', email);

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false);
                      }
                    },
                    child: const Text("Register")),
              ],
            )),
      ),
    );
  }
}
