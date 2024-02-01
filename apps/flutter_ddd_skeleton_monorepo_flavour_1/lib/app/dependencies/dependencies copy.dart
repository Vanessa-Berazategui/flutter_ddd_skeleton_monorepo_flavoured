import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:self_checkout_cvc/app/dependencies/dependencies.config.dart';

final getIt = GetIt.I;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> setupDependencies({
  required String env,
}) async {
  await getIt.init(environment: env);
}
