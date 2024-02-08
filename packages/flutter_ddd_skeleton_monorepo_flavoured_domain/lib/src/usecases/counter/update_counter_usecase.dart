import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/src/repositories/counter_repository.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/src/result/result.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/src/usecases/usecases.dart';

class UpdateCounterUseCase implements BaseUseCase<void, int> {
  const UpdateCounterUseCase({required CounterRepository repository})
      : _repository = repository;

  final CounterRepository _repository;

  @override
  Future<Result<void>> call(int params) => _repository.updateCounter(params);
}
