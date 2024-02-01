import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';
part 'counter_state.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc() : super(CounterState.init());

  void increment() => emit(state.copyWith(value: state.value + 1));

  void decrement() => emit(state.copyWith(value: state.value - 1));
}
