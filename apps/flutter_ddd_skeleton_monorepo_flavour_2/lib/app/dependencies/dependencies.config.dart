// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i8;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/app.dart' as _i3;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/dependencies/app_blocs_module.dart'
    as _i10;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/dependencies/app_packages_module.dart'
    as _i11;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/environment/app_environment_development.dart'
    as _i5;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/environment/app_environment_production.dart'
    as _i6;
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/environment/app_environment_staging.dart'
    as _i4;
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart'
    as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _stg = 'stg';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appBlocsModule = _$AppBlocsModule();
    final appPackagesModule = _$AppPackagesModule();
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i4.AppEnvironmentStaging(),
      registerFor: {_stg},
    );
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i5.AppEnvironmentDevelopment(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i6.AppEnvironmentProduction(),
      registerFor: {_prod},
    );
    gh.factory<_i7.CounterBloc>(() => appBlocsModule.counterBloc());
    gh.lazySingleton<_i8.DeviceInfoPlugin>(
        () => appPackagesModule.deviceInfoPlugin());
    gh.lazySingleton<_i9.FlutterSecureStorage>(
        () => appPackagesModule.flutterSecureStorage());
    return this;
  }
}

class _$AppBlocsModule extends _i10.AppBlocsModule {}

class _$AppPackagesModule extends _i11.AppPackagesModule {}
