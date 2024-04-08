// Project imports:

// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  CounterBloc counterBloc(
    SaveCounterUseCase saveCounterUseCase,
    GetCounterUseCase getCounterUseCase,
    QuizCounterUseCase quizCounterUseCase,
  ) =>
      CounterBloc(
        saveCounterUseCase: saveCounterUseCase,
        getCounterUseCase: getCounterUseCase,
        quizCounterUseCase: quizCounterUseCase,
      );
}
