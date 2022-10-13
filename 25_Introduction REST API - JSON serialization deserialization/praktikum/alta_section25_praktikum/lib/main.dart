import 'dart:math';

import 'package:alta_section25_praktikum/models/dio_client.dart';
import 'package:alta_section25_praktikum/models/user_info.dart';
import 'package:alta_section25_praktikum/screens/getScreen.dart';
import 'package:alta_section25_praktikum/screens/postScreen.dart';
import 'package:alta_section25_praktikum/screens/putScreen.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] REST API',
      home: MyHomePage(title: 'Home'),
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
  final _nameController = TextEditingController();
  final _jobController = TextEditingController();

  final DioClient client = DioClient();

  UserInfo newUser =
      UserInfo(name: "name", job: "job", id: 0, createdAt: "currentDateTime");
  UserInfo updateUser =
      UserInfo(name: "name", job: "job", id: 0, createdAt: "currentDateTime");

  var idRandom = Random().nextInt(100) + 5;

  String output = '';

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _jobController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _jobController,
              decoration: const InputDecoration(
                  labelText: 'Job',
                  prefixIcon: Icon(Icons.work),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GetScreen(),
                        ),
                      );
                    },
                    child: const Text("GET"),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      newUser = UserInfo(
                          name: _nameController.text,
                          job: _jobController.text,
                          id: idRandom,
                          createdAt: DateFormat("d-MMM-y HH:mm:ss")
                              .format(DateTime.now()));
                      print("Date created: ${newUser.createdAt}");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostScreen(userInfo: newUser),
                        ),
                      );
                    },
                    child: const Text("POST"),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      updateUser = UserInfo(
                        name: _nameController.text,
                        job: _jobController.text,
                        id: newUser.id,
                        createdAt: newUser.createdAt,
                        updatedAt: DateFormat("d-MMM-y HH:mm:ss")
                            .format(DateTime.now()),
                      );
                      print("Date updated: ${updateUser.updatedAt}");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PutScreen(userInfo: updateUser, id: newUser.id),
                        ),
                      );
                    },
                    child: const Text("PUT"),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("DELETE"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(output),
            // FutureBuilder(
            //   future: client.getUser(id: 1),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       User? userInfo = snapshot.data as User?;

            //       if (userInfo != null) {
            //         Data userData = userInfo.data;
            //         return Column(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Image.network(userData.avatar),
            //             const SizedBox(
            //               height: 8.0,
            //             ),
            //             Text(
            //               '${userInfo.data.firstName} ${userInfo.data.lastName}',
            //               style: TextStyle(fontSize: 16.0),
            //             ),
            //             Text(
            //               userData.email,
            //               style: TextStyle(fontSize: 16.0),
            //             ),
            //           ],
            //         );
            //       }
            //     }
            //     return CircularProgressIndicator();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
