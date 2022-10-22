import 'package:alta_weeklytask3_praktikum/model/contactus_model.dart';
import 'package:flutter/material.dart';

class ContactUsViewModel with ChangeNotifier {
  final _contactusModels = <ContactusModel>[];
  List<ContactusModel> get contactusModels =>
      List.unmodifiable(_contactusModels);

  void addContactus(ContactusModel contactus) {
    _contactusModels.add(contactus);
    notifyListeners();
  }
}
