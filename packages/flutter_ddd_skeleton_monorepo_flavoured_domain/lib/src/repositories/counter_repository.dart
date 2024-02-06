import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/src/params/params.dart';

abstract class CounterRepository extends BaseRepository {
  Future<Result<int>> getCounter(NoParams params);

  Future<Result<void>> updateCounter(int params);
}
