// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/flutter_ddd_skeleton_monorepo_flavoured_data.dart';

abstract class CounterRemoteDataSource extends BaseDataSource {
  Future<String> quizCounter(CounterDataParams counterDataParams);
}

class CounterDataRemoteDataSource extends BaseDataSource
    implements CounterRemoteDataSource {
  const CounterDataRemoteDataSource({
    required this.api,
  });

  final FlutterDddSkeletonMonorepoFlavouredApi api;

  @override
  Future<String> quizCounter(CounterDataParams counterDataParams) async {
    final result = await api.quizCounter(
      number: counterDataParams.value,
      fragment: true,
      json: true,
    );

    if (result.found) {
      return result.text;
    }

    throw QuizException();
  }
}
