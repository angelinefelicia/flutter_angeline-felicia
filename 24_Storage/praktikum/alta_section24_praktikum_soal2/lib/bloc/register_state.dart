part of 'register_bloc.dart';

class RegisterState {
  final String name;
  final String email;

  RegisterState({
    this.name = '',
    this.email = '',
  });

  List<Object> get getDatas => [name, email];
}
