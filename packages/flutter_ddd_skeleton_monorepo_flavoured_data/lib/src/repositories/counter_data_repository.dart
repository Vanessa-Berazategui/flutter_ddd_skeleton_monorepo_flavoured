import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/src/datasources/datasources.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

class CounterDataRepository implements CounterRepository {
  CounterDataRepository({
    required CounterLocalDataSource localDataSource,
    required CounterRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final CounterLocalDataSource _localDataSource;
  final CounterRemoteDataSource _remoteDataSource;

  @override
  Future<Result<int>> getCounter(NoParams params) async {
    // TODO: implement getCounter
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateCounter(int params) async {
    // TODO: implement updateCounter
    throw UnimplementedError();
  }
}
