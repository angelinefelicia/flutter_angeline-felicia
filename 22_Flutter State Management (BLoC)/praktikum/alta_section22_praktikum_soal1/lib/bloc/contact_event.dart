part of 'contact_bloc.dart';

abstract class ContactEvent {}

class ContactEventName extends ContactEvent {
  ContactEventName(this.name);
  final String name;
}

class ContactEventNum extends ContactEvent {
  ContactEventNum(this.num);
  final String num;
}

class ContactEventPic extends ContactEvent {
  ContactEventPic(this.pic);
  File? pic;
}
