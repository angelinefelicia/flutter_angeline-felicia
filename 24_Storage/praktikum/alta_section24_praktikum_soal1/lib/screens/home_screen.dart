import 'package:alta_section24_praktikum_soal1/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences registerData;
  String name = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    registerData = await SharedPreferences.getInstance();
    setState(() {
      name = registerData.getString('name').toString();
      email = registerData.getString('email').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: darkpink,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(50),
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 105,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                const TextSpan(text: 'Hello, '),
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
              const SizedBox(
                height: 10,
              ),
              Text(
                email,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: darkpink),
                onPressed: () {
                  registerData.setBool('isRegister', true);
                  registerData.remove('name');
                  registerData.remove('email');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                },
                child: const Text("LOG OUT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
