import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[ANGEL] Platform Widget',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF0088CC),
      ),
      home: const MyHomePage(title: 'Telegram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
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
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Contacts'),
            ),
            ListTile(
              leading: Icon(Icons.phone_enabled_rounded),
              title: Text('Calls'),
            ),
            ListTile(
              leading: Icon(Icons.settings_rounded),
              title: Text('Settings'),
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Color.fromARGB(255, 233, 233, 233),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Invite Friends'),
            ),
            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('Telegram Features'),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/backgrounds/1.jpg'),
              ),
              title: Text("Kal",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "where are you?",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Text("Fri", style: TextStyle(fontSize: 12)),
            ),
            Divider(
              height: 0,
              thickness: 1,
              indent: 68,
              endIndent: 0,
              color: Color.fromARGB(255, 233, 233, 233),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/backgrounds/2.jpg'),
              ),
              title: Text("Rei",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "thanks",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Text("Wed", style: TextStyle(fontSize: 12)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New Chat',
        backgroundColor: Color.fromARGB(255, 95, 181, 252),
        child: const Icon(
          Icons.create_rounded,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
