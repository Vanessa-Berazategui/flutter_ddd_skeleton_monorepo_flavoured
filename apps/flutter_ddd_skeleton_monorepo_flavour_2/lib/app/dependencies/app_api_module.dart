// Package imports:
import 'package:injectable/injectable.dart';

@module
abstract class AppApiModule {
  //============================
  // Flutter DDD Skeleton Monorepo Api
  //============================
  // @preResolve
  // @lazySingleton
  // Future<GeoposServicesApi> geoposServicesApi(
  //   AppEnvironment appEnvironment,
  //   ConfigurationLocalDataSource configurationLocalDataSource,
  //   HttpAuthorizationInterceptor httpAuthorizationInterceptor,
  // ) async {
  //   try {
  //     final baseUrl = await configurationLocalDataSource.getCachedBaseURL();
  //     log('Load GeoposServicesApi with baseUrl: $baseUrl');
  //     return GeoposServicesApi(
  //       baseUrl: baseUrl,
  //       httpAuthorizationInterceptor: httpAuthorizationInterceptor,
  //       timeoutOptions: TimeoutOptions(
  //         connectTimeout: appEnvironment.connectTimeout,
  //         receiveTimeout: appEnvironment.receiveTimeout,
  //         sendTimeout: appEnvironment.sendTimeout,
  //       ),
  //     );
  //   } catch (_) {
  //     log('Load GeoposServicesApi with empty baseUrl');
  //     return GeoposServicesApi(
  //       baseUrl: '',
  //       httpAuthorizationInterceptor: httpAuthorizationInterceptor,
  //       timeoutOptions: TimeoutOptions(),
  //     );
  //   }
  // }

  // @lazySingleton
  // HttpAuthorizationInterceptor httpAuthorizationInterceptor(
  //   AuthLocalDataSource authLocalDataSource,
  //   ConfigurationLocalDataSource configurationLocalDataSource,
  // ) =>
  //     HttpAuthorizationInterceptor(
  //       authLocalDataSource: authLocalDataSource,
  //       configurationLocalDataSource: configurationLocalDataSource,
  //     );
}
