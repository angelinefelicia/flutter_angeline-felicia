import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] GridView in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GridView in Flutter'),
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
  static Color blue = const Color.fromRGBO(187, 222, 251, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(
                  Icons.ac_unit_rounded,
                  // color: Colors.pink,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.bakery_dining_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.cake_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.deck_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.eco_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.fastfood_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.grass_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.highlight_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.icecream_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.join_full_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.kebab_dining_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.light_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.mail_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.nightlife_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.outdoor_grill_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.palette_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.queue_music_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.ramen_dining_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.sailing_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.table_bar_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.umbrella_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.videogame_asset_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.watch_rounded),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue),
                    shape: BoxShape.circle,
                    color: blue),
                child: const Icon(Icons.yard_rounded),
              ),
            ),
          ],
        ));
  }
}
