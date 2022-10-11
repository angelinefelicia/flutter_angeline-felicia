import 'package:flutter/material.dart';
import 'package:alta_section24_praktikum_soal1/models/model.dart';

class RegisterData with ChangeNotifier {
  List<Data> _datas = [];

  List<Data> get getDatas => _datas;

  void add(String name, String email) {
    Data data = Data(name: name, email: email);
    _datas.add(data);
    notifyListeners();
  }

  void delete(int index) {
    _datas.removeAt(index);
    notifyListeners();
  }
}
