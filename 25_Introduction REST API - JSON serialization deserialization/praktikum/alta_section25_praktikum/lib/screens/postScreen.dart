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

  bool isLoading = false;
  UserInfo? retrievedUser;

  @override
  void initState() {
    super.initState();
    createUser(userInfo: widget.userInfo);
  }

  Future createUser({required UserInfo userInfo}) async {
    Response response;

    try {
      isLoading = true;
      response = await dio.post(
        '$baseurl/users',
        data: userInfo.toJson(),
      );
      print('User created: ${response.data}');

      setState(() {
        isLoading = false;
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : retrievedUser != null
              ? Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    title: Text(retrievedUser!.name),
                    subtitle: Text(retrievedUser!.job),
                    trailing: Text(
                      retrievedUser!.createdAt.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              : Container(),
    );
  }
}
