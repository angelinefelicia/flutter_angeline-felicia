part of 'counter_bloc.dart';

@immutable
class CounterState {
  int value = 0;
  CounterState(this.value);

  @override
  List<Object> get props => [value];
}

// class CounterInitial extends CounterState {}
