import 'package:alta_section26_praktikum/screen/call_screen.dart';
import 'package:alta_section26_praktikum/screen/contact/contact_screen.dart';
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
            leading: const Icon(Icons.group),
            title: const Text('New Group'),
            onTap: () {},
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
            leading: const Icon(Icons.phone_enabled_rounded),
            title: const Text('Calls'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CallScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: const Text('Settings'),
            onTap: () {},
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Invite Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_rounded),
            title: const Text('Telegram Features'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
