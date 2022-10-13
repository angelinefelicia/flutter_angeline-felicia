import 'package:alta_section25_praktikum/models/user.dart';
import 'package:alta_section25_praktikum/models/user_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioClient {
  final Dio dio = Dio();
  final baseurl = 'https://reqres.in/api';

  Future getUser({required int id}) async {
    User? user;

    try {
      final Response userData = await dio.get('$baseurl/users/$id');
      print('User Info: ${userData.data}');
      user = User.fromJson(userData.data);

      return user;
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
  }

  Future<UserInfo?> createUser({required UserInfo userInfo}) async {
    UserInfo? retrievedUser;

    try {
      Response response = await dio.post(
        '$baseurl/users',
        data: userInfo.toJson(),
      );
      print('User created: ${response.data}');
      retrievedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      print('Error creating user: $e');
    }

    return retrievedUser;
  }

  Future<UserInfo?> updateUser({
    required UserInfo userInfo,
    required String? id,
  }) async {
    UserInfo? updatedUser;

    try {
      Response response = await dio.put(
        '$baseurl/users/$id',
        data: userInfo.toJson(),
      );

      print('User updated: ${response.data}');

      updatedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      print('Error updating user: $e');
    }

    return updatedUser;
  }

  Future<void> deleteUser({required String id}) async {
    try {
      await dio.delete('$baseurl/users/$id');
      print('User deleted!');
    } catch (e) {
      print('Error deleting user: $e');
    }
  }
}
