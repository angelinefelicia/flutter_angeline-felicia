import 'package:alta_section26_praktikum/model/api/contact_api.dart';
import 'package:alta_section26_praktikum/model/contact_model.dart';
import 'package:flutter/cupertino.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  getAllContacts() async {
    final allContacts = await ContactApi.getContacts();
    _contacts = allContacts;
    notifyListeners();
  }
}
