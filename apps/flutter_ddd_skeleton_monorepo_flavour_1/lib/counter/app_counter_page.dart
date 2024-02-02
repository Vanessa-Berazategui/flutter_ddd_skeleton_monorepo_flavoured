// Package imports:

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/counter/app_counter_view.dart';

class AppCounterPage extends CounterPage {
  AppCounterPage()
      : super(
          path: _path,
          name: route,
          bloc: (_) => getIt(),
          view: const AppCounterView(),
        );

  static const _path = '/counter';

  static String get route => _path;

  static void open(BuildContext context) => context.go(route);
}
