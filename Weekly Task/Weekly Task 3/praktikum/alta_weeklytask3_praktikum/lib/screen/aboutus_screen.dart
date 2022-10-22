import 'package:alta_weeklytask3_praktikum/main.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/appbar.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/drawer.dart';
import 'package:flutter/material.dart';

class AboutusScreen extends StatelessWidget {
  const AboutusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      appBar: appbar(),
      drawer: const DrawerItem(),
      body: Column(
        children: [
          aboutusSection(),
        ],
      ),
    );
  }

  Widget aboutusSection() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bear_au2.jpg"),
          fit: BoxFit.fill,
          opacity: 350,
        ),
        color: Colors.white,
      ),
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const Text(
              "ABOUT US",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 80, 56, 48),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                listItemCard("icon1.png", "RECIPES",
                    "Look and Try our baking recipes from all around the world. We only provide best baking recipes. Don't afraid to fail at baking with our recipes."),
                listItemCard("icon2.png", "CHALLENGE",
                    "Feel confident with your own recipe? Join our baking recipe challenge and win to get your chance to publish your own recipes at Bake Bear."),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listItemCard(String image, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView(
        children: [
          Image.asset(
            "assets/images/$image",
            height: 65,
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 146, 86, 66),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
