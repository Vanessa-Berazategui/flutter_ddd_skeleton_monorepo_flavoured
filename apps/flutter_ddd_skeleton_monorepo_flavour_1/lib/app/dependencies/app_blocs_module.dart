// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

// Package imports:
import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  CounterBloc counterBloc() => CounterBloc();
}
