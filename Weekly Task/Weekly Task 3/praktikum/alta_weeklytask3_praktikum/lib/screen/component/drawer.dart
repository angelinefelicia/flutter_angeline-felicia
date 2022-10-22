import 'package:alta_weeklytask3_praktikum/main.dart';
import 'package:alta_weeklytask3_praktikum/screen/aboutus_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/contactus_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/datauser_screen.dart';
import 'package:alta_weeklytask3_praktikum/screen/home_screen.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: white,
      child: ListView(
        children: [
          // Drawer Banner
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bear_drawer.jpg"),
                fit: BoxFit.fill,
                opacity: 400,
              ),
              color: Color.fromARGB(255, 56, 40, 33),
            ),
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "BAKE \n    BEAR",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Drawer Button
          buttonDrawerItem("Contact Us", context, const ContactusScreen()),
          buttonDrawerItem("About Us", context, const AboutusScreen()),
          buttonDrawerItem("Login", context, const HomeScreen()),
          buttonDrawerItem("Data User", context, const DataUserScreen()),
        ],
      ),
    );
  }

  Widget buttonDrawerItem(String text, BuildContext context, key) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => key,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          onPrimary: white,
          primary: brown,
        ),
        child: Text(text),
      ),
    );
  }
}
