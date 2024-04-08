// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/theme/material_theme.dart';

@module
abstract class AppThemeModule {
  @lazySingleton
  MaterialTheme materialTheme() => MaterialTheme();
}
