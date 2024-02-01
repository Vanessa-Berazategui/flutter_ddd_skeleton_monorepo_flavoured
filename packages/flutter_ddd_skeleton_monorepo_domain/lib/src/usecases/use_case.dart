// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_domain/flutter_ddd_skeleton_monorepo_domain.dart';

abstract class UseCase<Type, Params> {
  const UseCase();
  Future<Result<Type>> call(Params params);
}

class NoParams {
  const NoParams();
}
