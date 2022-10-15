import 'package:alta_section26_praktikum/model/contact_model.dart';
import 'package:alta_section26_praktikum/screen/contact/contact_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modalView = Provider.of<ContactViewModel>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
      ),
      drawer: drawerItem(),
      body: ListView.builder(
        itemCount: modalView.contacts.length,
        itemBuilder: (context, index) {
          final contact = modalView.contacts[index];
          return contactItemCard(contact);
        },
      ),
    );
  }

  Widget contactItemCard(Contact contact) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 15,
      ),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        title: Text(
          contact.name,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          contact.phone,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  Widget drawerItem() {
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
                  builder: (context) => ContactScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone_enabled_rounded),
            title: const Text('Calls'),
            onTap: () {},
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
