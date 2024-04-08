// Package imports:
import 'package:meta/meta.dart';

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

@immutable
abstract class BaseUseCase<Type, Params extends BaseEntity> {
  const BaseUseCase();

  Future<Result<Type>> call(Params params);
}
