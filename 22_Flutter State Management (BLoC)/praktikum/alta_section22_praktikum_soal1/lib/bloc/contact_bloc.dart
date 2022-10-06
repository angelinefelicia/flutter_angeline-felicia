import 'dart:js';

import 'package:alta_section22_praktikum_soal1/models/contact_model.dart';
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

  void mapEventToState(ContactEvent event, Emitter<ContactState> emit) async {
    if (event is ContactEventName) {
      _name = event.name;
    }

    if (event is ContactEventNum) {
      _num = event.num;
    }

    emit(getBlocState());
  }

  ContactState getBlocState() {
    return ContactState(
      name: _name,
      num: _num,
    );
  }
}
