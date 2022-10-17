import 'package:alta_section27_praktikum/model/api/food_api.dart';
import 'package:alta_section27_praktikum/model/food_model.dart';
import 'package:flutter/cupertino.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  getAllFoods() async {
    changeState(FoodViewState.loading);

    try {
      final allFoods = await FoodApi.getFoods();
      _foods = allFoods;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
