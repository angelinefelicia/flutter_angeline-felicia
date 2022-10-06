import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactState()) {
    on<ContactEvent>(mapEventToState);
  }

  String _name = '';
  String _num = '';
  File? _pic;

  void mapEventToState(ContactEvent event, Emitter<ContactState> emit) async {
    if (event is ContactEventName) {
      _name = event.name;
    }

    if (event is ContactEventNum) {
      _num = event.num;
    }

    if (event is ContactEventPic) {
      _pic = event.pic;
    }

    emit(getBlocState());
  }

  ContactState getBlocState() {
    return ContactState(
      name: _name,
      num: _num,
      pic: _pic,
    );
  }
}
