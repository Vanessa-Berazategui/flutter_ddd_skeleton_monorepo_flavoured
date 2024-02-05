// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/bootstrap.dart';

void main() {
  bootstrap(() => const App(), env: AppEnvironment.stg);
}
