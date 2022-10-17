import 'package:alta_section27_praktikum/model/api/food_api.dart';
import 'package:alta_section27_praktikum/model/food_model.dart';
import 'package:flutter/cupertino.dart';

class FoodViewModel with ChangeNotifier {
  List<Food> _foods = [];
  List<Food> get foods => _foods;

  getAllFoods() async {
    final allFoods = await FoodApi.getFoods();
    _foods = allFoods;
    notifyListeners();
  }
}
