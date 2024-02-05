// Package imports:

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/app.dart';

@LazySingleton(as: AppEnvironment, env: [AppEnvironment.dev])
class AppEnvironmentDevelopment implements AppEnvironment {
  @override
  String get baseUrl => '';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 50000;

  @override
  int get sendTimeout => 30000;

  @override
  String get env => AppEnvironment.dev;
}
