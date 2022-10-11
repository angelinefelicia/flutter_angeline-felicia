import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterEvent>(mapEventToState);
  }

  String _name = '';
  String _email = '';

  void mapEventToState(RegisterEvent event, Emitter<RegisterState> emit) async {
    if (event is RegisterDataName) {
      _name = event.name;
    }

    if (event is RegisterDataEmail) {
      _email = event.email;
    }

    emit(getBlocState());
  }

  RegisterState getBlocState() {
    return RegisterState(
      name: _name,
      email: _email,
    );
  }
}
