import 'package:alta_section24_praktikum_soal1/models/model.dart';
import 'package:alta_section24_praktikum_soal1/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:alta_section24_praktikum_soal1/models/registerData.dart';

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
  String sp_name = '';
  String sp_email = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    registerData = await SharedPreferences.getInstance();
    setState(() {
      sp_name = registerData.getString('name').toString();
      sp_email = registerData.getString('email').toString();

      Provider.of<RegisterData>(context, listen: false).add(sp_name, sp_email);
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
      body: Consumer<RegisterData>(
        builder: (context, RegisterData data, child) {
          return ListView.builder(
            itemCount: data.getDatas.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      WelcomeCard(data.getDatas[index]),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: darkpink),
                        onPressed: () {
                          registerData.setBool('isRegister', true);
                          registerData.remove('name');
                          registerData.remove('email');

                          data.delete(index);

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
              );
            },
          );
        },
      ),
    );
  }
}

class WelcomeCard extends StatelessWidget {
  WelcomeCard(this.data);
  final Data data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 60,
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
                text: data.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ])),
            const SizedBox(
              height: 5,
            ),
            Text(
              data.email,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
