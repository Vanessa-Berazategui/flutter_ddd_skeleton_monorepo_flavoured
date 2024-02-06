import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

abstract class UseCase<Type, Params> {
  const UseCase();
  Future<Result<Type>> call(Params params);
}
