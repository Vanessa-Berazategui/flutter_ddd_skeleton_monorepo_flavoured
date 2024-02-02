// Package imports:
import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs
  // @lazySingleton
  // SessionBloc sessionBloc(
  //   CacheOrderDataUseCase cacheOrderDataUseCase,
  //   ClearCacheOrderDataUseCase clearCacheOrderDataUseCase,
  //   ClearCacheCurrentPaymentDataUseCase clearCacheCurrentPaymentDataUseCase,
  //   CancelOrderUseCase cancelOrderUseCase,
  //   DiscardOrderUseCase discardOrderUseCase,
  //   GetOrderUseCase getOrderUseCase,
  //   GetCachedConfigurationAppDataUseCase getCachedConfigurationAppDataUseCase,
  //   GetCachedAuthenticationAppDataUseCase getCachedAuthenticationAppDataUseCase,
  //   GetCachedOrderDataUseCase getCachedOrderDataUseCase,
  //   CacheAuthenticationAppDataUseCase cacheAuthenticationAppDataUseCase,
  //   ClearCacheAuthenticationAppDataUseCase
  //       clearCacheAuthenticationAppDataUseCase,
  //   ClearCacheConfigurationAppDataUseCase clearCacheConfigurationAppDataUseCase,
  // ) =>
  //     SessionBloc(
  //       getCachedOrderDataUseCase: getCachedOrderDataUseCase,
  //       getCachedAuthenticationAppDataUseCase:
  //           getCachedAuthenticationAppDataUseCase,
  //       getCachedConfigurationAppDataUseCase:
  //           getCachedConfigurationAppDataUseCase,
  //       getOrderUseCase: getOrderUseCase,
  //       cacheOrderDataUseCase: cacheOrderDataUseCase,
  //       clearCacheOrderDataUseCase: clearCacheOrderDataUseCase,
  //       clearCacheCurrentPaymentDataUseCase:
  //           clearCacheCurrentPaymentDataUseCase,
  //       cancelOrderUseCase: cancelOrderUseCase,
  //       discardOrderUseCase: discardOrderUseCase,
  //       cacheAuthenticationAppDataUseCase: cacheAuthenticationAppDataUseCase,
  //       clearCacheAuthenticationAppDataUseCase:
  //           clearCacheAuthenticationAppDataUseCase,
  //       clearCacheConfigurationAppDataUseCase:
  //           clearCacheConfigurationAppDataUseCase,
  //     );

  /// Page View Blocs
  // ConfigBloc configBloc(
  //   AppEnvironment environment,
  //   GetDeviceIdUseCase getDeviceIdUseCase,
  //   CacheBaseUrlUseCase cacheBaseUrlUseCase,
  //   CacheConfigurationTokenUseCase cacheConfigurationTokenUseCase,
  //   CacheConfigurationAppDataUseCase cacheConfigurationAppDataUseCase,
  // ) =>
  //     ConfigBloc(
  //       confDevicePermissionId: environment.confDevicePermissionId,
  //       reloadDependencies: () async {
  //         await getIt.reset();
  //         await setupDependencies(env: environment.env);
  //       },
  //       reloadLoginUseCase: getIt.call,
  //       reloadConfigureUseCase: getIt.call,
  //       getDeviceIdUseCase: getDeviceIdUseCase,
  //       cacheBaseUrlUseCase: cacheBaseUrlUseCase,
  //       cacheConfigurationTokenUseCase: cacheConfigurationTokenUseCase,
  //       cacheConfigurationAppDataUseCase: cacheConfigurationAppDataUseCase,
  //     );
}
