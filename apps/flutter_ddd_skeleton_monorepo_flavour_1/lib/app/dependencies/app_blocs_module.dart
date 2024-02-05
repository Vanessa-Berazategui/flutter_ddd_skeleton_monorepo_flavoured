// Project imports:

// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  CounterBloc counterBloc() => CounterBloc();
}
