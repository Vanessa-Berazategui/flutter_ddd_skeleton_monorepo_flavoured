import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';

class CounterDataParams extends CounterParams {
  const CounterDataParams({required super.value});

  factory CounterDataParams.fromDomain(CounterParams params) =>
      CounterDataParams(
        value: params.value,
      );
}
