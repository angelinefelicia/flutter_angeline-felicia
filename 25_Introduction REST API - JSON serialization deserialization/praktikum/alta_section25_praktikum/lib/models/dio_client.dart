import 'package:alta_section25_praktikum/models/user.dart';
import 'package:dio/dio.dart';

class DioClient {
  final Dio dio = Dio();
  final baseurl = 'https://reqres.in/api';

  Future<User?> getUser({required int id}) async {
    User? user;

    try {
      Response userData = await dio.get('$baseurl/users/$id');
      print('User Info: ${userData.data}');
      user = User.fromJson(userData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }

    return user;
  }
}
