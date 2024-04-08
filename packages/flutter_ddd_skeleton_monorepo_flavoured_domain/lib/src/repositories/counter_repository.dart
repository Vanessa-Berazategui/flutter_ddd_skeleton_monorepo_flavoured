// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

abstract interface class CounterRepository extends BaseRepository {
  Future<Result<int>> getCounter(NoParams params);

  Future<Result<void>> saveCounter(CounterParams params);

  Future<Result<String>> quizCounter(CounterParams params);
}
