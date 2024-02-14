part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required bool loading,
    required int value,
    Failure? failure,
  }) = _CounterState;

  factory CounterState.init() => const CounterState(
        loading: false,
        value: 0,
      );
}
