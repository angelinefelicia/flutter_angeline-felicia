import 'package:alta_section27_praktikum/model/api/contact_api.dart';
import 'package:alta_section27_praktikum/model/contact_model.dart';
import 'package:flutter/cupertino.dart';

enum ContactViewState {
  none,
  loading,
  error,
}

class ContactViewModel with ChangeNotifier {
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  getAllContacts() async {
    changeState(ContactViewState.loading);

    try {
      final allContacts = await ContactApi.getContacts();
      _contacts = allContacts;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }
}
