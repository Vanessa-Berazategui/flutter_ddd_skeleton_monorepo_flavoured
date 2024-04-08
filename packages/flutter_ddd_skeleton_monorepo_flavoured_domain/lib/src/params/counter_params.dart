// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

class CounterParams extends BaseEntity {
  const CounterParams({
    required this.value,
  });

  final int value;

  @override
  List<Object?> get props => [
        value,
      ];
}
