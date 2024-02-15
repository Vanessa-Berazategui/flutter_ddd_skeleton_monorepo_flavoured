// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/dependencies.config.dart';
// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

export 'app_blocs_module.dart';
export 'app_blocs_provider.dart';
export 'app_datasources_module.dart';
export 'app_packages_module.dart';
export 'app_repositories_module.dart';
export 'app_usecases_module.dart';

final getIt = GetIt.I;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> setupDependencies({
  required String env,
}) async =>
    getIt.init(environment: env);
