// Package imports:
import 'package:bloc/bloc.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';
part 'counter_state.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc({
    required SaveCounterUseCase saveCounterUseCase,
    required GetCounterUseCase getCounterUseCase,
  })  : _saveCounterUseCase = saveCounterUseCase,
        _getCounterUseCase = getCounterUseCase,
        super(CounterState.init()) {
    _loadData();
  }

  final SaveCounterUseCase _saveCounterUseCase;
  final GetCounterUseCase _getCounterUseCase;

  Future<void> _loadData() async {
    emit(state.copyWith(loading: true));

    final result = await _getCounterUseCase.call(const NoParams());

    result.when(
      success: (value) => emit(
        state.copyWith(
          loading: false,
          failure: null,
          value: value,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
    );
  }

  void increment() => emit(state.copyWith(value: state.value + 1));

  void decrement() => emit(state.copyWith(value: state.value - 1));

  Future<void> save() async {
    emit(state.copyWith(loading: true));

    final result = await _saveCounterUseCase.call(
      CounterParams(
        value: state.value,
      ),
    );

    result.when(
      success: (_) => emit(
        state.copyWith(
          loading: false,
          failure: null,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          loading: false,
          failure: failure,
        ),
      ),
    );
  }

  void cleanFailure() => emit(state.copyWith(failure: null));
}
