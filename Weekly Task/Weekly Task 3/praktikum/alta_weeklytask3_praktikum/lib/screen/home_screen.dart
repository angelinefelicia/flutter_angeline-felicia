import 'package:alta_weeklytask3_praktikum/main.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/appbar.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      appBar: appbar(),
      drawer: const DrawerItem(),
      body: Column(
        children: [
          welcomeSection(),
        ],
      ),
    );
  }

  Widget welcomeSection() {
    return Container(
      decoration: BoxDecoration(color: white),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 18),
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
    );
  }
}
