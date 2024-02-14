import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/src/api/params/counter_data_params.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_data/src/datasources/base/base.dart';

class CounterLocalDataSource extends BaseDataSource {
  Future<int> getCounter() async {
    return Future.delayed(const Duration(microseconds: 100), () => 0);
  }

  Future<void> saveCounter(CounterDataParams counterDataParams) async {}
}
