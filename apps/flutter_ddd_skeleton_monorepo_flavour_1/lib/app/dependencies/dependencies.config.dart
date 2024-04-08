// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart' as _i3;

import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_blocs_module.dart'
    as _i17;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_datasources_module.dart'
    as _i12;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_packages_module.dart'
    as _i13;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_repositories_module.dart'
    as _i15;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_theme_module.dart'
    as _i14;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/dependencies/app_usecases_module.dart'
    as _i16;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/environment/app_environment_development.dart'
    as _i5;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/environment/app_environment_production.dart'
    as _i6;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/environment/app_environment_staging.dart'
    as _i4;
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/theme/material_theme.dart'
    as _i9;
import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/flutter_ddd_skeleton_monorepo_flavoured_data.dart'
    as _i7;
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart'
    as _i10;
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart'
    as _i11;

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
    final appDataSourcesModule = _$AppDataSourcesModule();
    final appPackagesModule = _$AppPackagesModule();
    final appThemeModule = _$AppThemeModule();
    final appRepositoriesModule = _$AppRepositoriesModule();
    final appUseCasesModule = _$AppUseCasesModule();
    final appBlocsModule = _$AppBlocsModule();
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
    gh.lazySingleton<_i7.CounterRemoteDataSource>(
        () => appDataSourcesModule.counterRemoteDataSource());
    gh.lazySingleton<_i8.FlutterSecureStorage>(
        () => appPackagesModule.flutterSecureStorage());
    gh.lazySingleton<_i9.MaterialTheme>(() => appThemeModule.materialTheme());
    gh.lazySingleton<_i7.CounterLocalDataSource>(() => appDataSourcesModule
        .counterLocalDataSource(gh<_i8.FlutterSecureStorage>()));
    gh.lazySingleton<_i10.CounterRepository>(
        () => appRepositoriesModule.aboutRepository(
              gh<_i7.CounterLocalDataSource>(),
              gh<_i7.CounterRemoteDataSource>(),
            ));
    gh.lazySingleton<_i10.GetCounterUseCase>(() =>
        appUseCasesModule.getCounterUseCase(gh<_i10.CounterRepository>()));
    gh.lazySingleton<_i10.SaveCounterUseCase>(() =>
        appUseCasesModule.saveCounterUseCase(gh<_i10.CounterRepository>()));
    gh.factory<_i11.CounterBloc>(() => appBlocsModule.counterBloc(
          gh<_i10.SaveCounterUseCase>(),
          gh<_i10.GetCounterUseCase>(),
        ));
    return this;
  }
}

class _$AppDataSourcesModule extends _i12.AppDataSourcesModule {}

class _$AppPackagesModule extends _i13.AppPackagesModule {}

class _$AppThemeModule extends _i14.AppThemeModule {}

class _$AppRepositoriesModule extends _i15.AppRepositoriesModule {}

class _$AppUseCasesModule extends _i16.AppUseCasesModule {}

class _$AppBlocsModule extends _i17.AppBlocsModule {}
