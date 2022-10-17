import 'package:alta_section27_praktikum/model/food_model.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class FoodApi {
  static Future<List<Food>> getFoods() async {
    final Dio dio = Dio();
    final baseurl =
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods';

    final response = await dio.get(baseurl);
    List<Food> foods = (response.data as List)
        .map((e) => Food(id: e['id'], name: e['name']))
        .toList();

    return foods;
  }
}
