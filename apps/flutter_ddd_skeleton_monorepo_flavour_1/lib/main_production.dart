// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/bootstrap.dart';

void main() {
  bootstrap(() => const App(), env: AppEnvironment.prod);
}
