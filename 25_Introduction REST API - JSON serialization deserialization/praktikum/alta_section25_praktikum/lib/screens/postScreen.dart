import 'package:alta_section25_praktikum/models/user_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key, required this.userInfo}) : super(key: key);
  final UserInfo userInfo;

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final Dio dio = Dio();
  final baseurl = 'https://reqres.in/api';

  UserInfo? retrievedUser;

  @override
  void initState() {
    super.initState();
    createUser(userInfo: widget.userInfo);
  }

  Future createUser({required UserInfo userInfo}) async {
    Response response;

    try {
      response = await dio.post(
        '$baseurl/users',
        data: userInfo.toJson(),
      );
      print('User created: ${response.data}');

      setState(() {
        retrievedUser = UserInfo.fromJson(response.data);
      });
    } catch (e) {
      print('Error creating user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New User"),
        backgroundColor: Colors.amber,
      ),
      body: retrievedUser != null
          ? Container(
              child: Column(
                children: [
                  Text(retrievedUser!.name),
                  Text(retrievedUser!.job),
                ],
              ),
            )
          : Container(),
    );
  }
}
