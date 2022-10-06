part of 'contact_bloc.dart';

class ContactState {
  final String name;
  final String num;
  File? pic;

  ContactState({
    this.name = '',
    this.num = '',
    this.pic,
  });

  List<Object> get properties => [name, num];
}
