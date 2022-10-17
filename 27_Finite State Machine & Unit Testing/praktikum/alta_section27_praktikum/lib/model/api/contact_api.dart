import 'package:alta_section27_praktikum/model/contact_model.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class ContactApi {
  static Future<List<Contact>> getContacts() async {
    final Dio dio = Dio();
    final baseurl =
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts';

    final response = await dio.get(baseurl);
    List<Contact> contacts = (response.data as List)
        .map((e) => Contact(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();

    return contacts;
  }

  // static Future<List<Contact>> createContacts(Contact contact) async {
  //   final Dio dio = Dio();
  //   final baseurl =
  //       'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts';

  //   final response = await dio.post(baseurl, data: jsonEncode(contact));

  //   List<Contact> contacts = (response.data as List)
  //       .map((e) => Contact(id: e['id'], name: e['name'], phone: e['phone']))
  //       .toList();

  //   return contacts;
  // }
}
