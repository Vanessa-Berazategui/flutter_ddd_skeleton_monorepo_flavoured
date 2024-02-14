// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/flutter_ddd_skeleton_monorepo_flavoured_data.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  CounterRepository aboutRepository(
    CounterLocalDataSource localDataSource,
    CounterRemoteDataSource remoteDataSource,
  ) =>
      CounterDataRepository(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );
}
