import 'package:alta_section21_praktikum/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactManager extends ChangeNotifier {
  final _contactModels = <ContactModel>[];
  List<ContactModel> get contactModels => List.unmodifiable(_contactModels);

  void deleteContact(int index) {
    _contactModels.removeAt(index);
    notifyListeners();
  }

  void addContact(ContactModel contact) {
    _contactModels.add(contact);
    notifyListeners();
  }
}
