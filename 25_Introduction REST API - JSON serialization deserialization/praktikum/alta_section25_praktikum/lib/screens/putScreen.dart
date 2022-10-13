import 'package:alta_section25_praktikum/models/user_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PutScreen extends StatefulWidget {
  const PutScreen({Key? key, required this.userInfo, required this.id})
      : super(key: key);
  final UserInfo userInfo;
  final int id;

  @override
  State<PutScreen> createState() => _PutScreenState();
}

class _PutScreenState extends State<PutScreen> {
  final Dio dio = Dio();
  final baseurl = 'https://reqres.in/api';

  bool isLoading = false;
  UserInfo? updatedUser;

  @override
  void initState() {
    super.initState();
    updateUser(userInfo: widget.userInfo, id: widget.id);
  }

  Future updateUser({
    required UserInfo userInfo,
    required int id,
  }) async {
    Response response;

    try {
      isLoading = true;
      response = await dio.put(
        '$baseurl/users/$id',
        data: userInfo.toJson(),
      );
      print('User updated: ${response.data}');

      setState(() {
        isLoading = false;
        updatedUser = UserInfo.fromJson(response.data);
      });
    } catch (e) {
      print('Error creating user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update User"),
        backgroundColor: Colors.amber,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : updatedUser != null
              ? Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    title: Text(updatedUser!.name),
                    subtitle: Text(updatedUser!.job),
                    trailing: Text(
                      updatedUser!.updatedAt.toString(),
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
