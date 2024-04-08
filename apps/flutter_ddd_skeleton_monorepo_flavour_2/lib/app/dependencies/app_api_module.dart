// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/environment/app_environment.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/flutter_ddd_skeleton_monorepo_flavoured_data.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppApiModule {
  //============================
  // Flutter DDD Skeleton Monorepo Api
  //============================
  @lazySingleton
  FlutterDddSkeletonMonorepoFlavouredApi flutterDddSkeletonMonorepoFlavouredApi(
    AppEnvironment appEnvironment,
    HttpAuthorizationInterceptor httpAuthorizationInterceptor,
  ) =>
      FlutterDddSkeletonMonorepoFlavouredApi(
        baseUrl: appEnvironment.baseUrl,
        httpAuthorizationInterceptor: httpAuthorizationInterceptor,
        timeoutOptions: TimeoutOptions(
          connectTimeout: appEnvironment.connectTimeout,
          receiveTimeout: appEnvironment.receiveTimeout,
          sendTimeout: appEnvironment.sendTimeout,
        ),
      );

  @lazySingleton
  HttpAuthorizationInterceptor httpAuthorizationInterceptor(
    AppEnvironment appEnvironment,
  ) =>
      HttpAuthorizationInterceptor(
        apiKey: appEnvironment.apiKey,
        apiHost: appEnvironment.apiHost,
      );
}
