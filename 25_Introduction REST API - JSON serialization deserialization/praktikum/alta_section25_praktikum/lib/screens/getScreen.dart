import 'package:alta_section25_praktikum/models/data.dart';
import 'package:alta_section25_praktikum/models/list_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({Key? key}) : super(key: key);

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {
  final Dio dio = Dio();
  final baseurl = 'https://reqres.in/api';

  bool isLoading = false;
  ListUser? listUser;
  List<Data>? datas;

  @override
  void initState() {
    super.initState();
    getListUser();
  }

  Future getListUser() async {
    Response response;

    try {
      isLoading = true;
      response = await dio.get('$baseurl/users?page=1');
      print('User Info: ${response.data}');

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          listUser = ListUser.fromJson(response.data);
          datas = listUser!.datas;
        });
      } else {
        print("not success");
      }
    } on DioError catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of User"),
        backgroundColor: Colors.amber,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : datas != null
              ? Container(
                  margin: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final data = datas![index];
                      return Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: data.firstName),
                                TextSpan(text: " ${data.lastName}"),
                              ],
                            ),
                          ),
                          leading: Image.network(data.avatar),
                          subtitle: Text(data.email),
                        ),
                      );
                    },
                    itemCount: datas!.length,
                  ),
                )
              : Container(),
    );
  }
}
