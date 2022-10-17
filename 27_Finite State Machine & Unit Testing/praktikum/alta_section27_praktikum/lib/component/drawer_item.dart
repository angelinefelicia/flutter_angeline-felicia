import 'package:alta_section27_praktikum/screen/contact/contact_screen.dart';
import 'package:alta_section27_praktikum/screen/food/food_screen.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountEmail: Text("+62 852 96922134"),
            accountName: Text("Angeline Felicia"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/backgrounds/bear.jpg'),
            ),
            otherAccountsPictures: [
              Icon(
                Icons.mode_night_rounded,
                color: Color(0xFFFFFFFF),
              ),
            ],
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 171, 168),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.restaurant_menu_rounded),
            title: const Text('Foods'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
