// Package imports:
// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/theme/material_theme.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppThemeModule {
  @lazySingleton
  MaterialTheme materialTheme() => MaterialTheme();
}
