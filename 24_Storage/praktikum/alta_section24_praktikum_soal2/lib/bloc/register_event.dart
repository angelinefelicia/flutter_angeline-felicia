part of 'register_bloc.dart';

abstract class RegisterEvent {}

class RegisterDataName extends RegisterEvent {
  RegisterDataName(this.name);
  final String name;
}

class RegisterDataEmail extends RegisterEvent {
  RegisterDataEmail(this.email);
  final String email;
}
