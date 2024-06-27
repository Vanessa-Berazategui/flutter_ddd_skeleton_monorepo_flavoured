// Package imports:

// Project imports:

// Package imports:

import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/environment/app_environment.dart';

class AppEnvironmentTesting implements AppEnvironment {
  const AppEnvironmentTesting();

  @override
  String get baseUrl => 'https://numbersapi.p.rapidapi.com';

  @override
  String get apiKey => '';

  @override
  String get apiHost => 'numbersapi.p.rapidapi.com';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 50000;

  @override
  int get sendTimeout => 30000;

  @override
  String get env => AppEnvironment.test;
}
