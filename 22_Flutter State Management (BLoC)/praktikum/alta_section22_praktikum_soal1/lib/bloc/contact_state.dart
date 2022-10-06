part of 'contact_bloc.dart';

class ContactState {
  final String name;
  final String num;

  ContactState({
    this.name = '',
    this.num = '',
  });

  List<Object> get properties => [name, num];
}
