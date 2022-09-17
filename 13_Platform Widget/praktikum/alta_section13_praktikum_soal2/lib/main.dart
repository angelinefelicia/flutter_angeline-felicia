import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: '[ANGEL] Platform Widget - iOS',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: MyHomePage(title: 'Chats'),
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
  String text = '';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Text("Edit"),
            onPressed: () {}),
        middle: Text(widget.title),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(Icons.edit_note_rounded),
          onPressed: () {},
        ),
      ),
      child: SafeArea(
          child: ListView(
        children: [
          SearchTextField(
            fieldValue: (String value) {
              setState(() {
                text = value;
              });
            },
          ),
          CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.star_fill),
                  label: 'Favourites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.clock_solid),
                  label: 'Recents',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_alt_circle_fill),
                  label: 'Contacts',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
                  label: 'Keypad',
                ),
              ],
            ),
            tabBuilder: (BuildContext context, int index) {
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return Center(
                    child: Text(' '),
                  );
                },
              );
            },
          )
        ],
      )),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.fieldValue,
  });

  final ValueChanged<String> fieldValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value) {
        fieldValue('The text has changed to: $value');
      },
      onSubmitted: (String value) {
        fieldValue('Submitted text: $value');
      },
    );
  }
}
