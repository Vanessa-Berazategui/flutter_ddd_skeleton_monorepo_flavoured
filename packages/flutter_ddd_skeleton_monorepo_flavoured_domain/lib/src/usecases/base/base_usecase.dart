import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BaseUseCase<Type, Params extends BaseParams> {
  const BaseUseCase();

  Future<Result<Type>> call(Params params);
}
