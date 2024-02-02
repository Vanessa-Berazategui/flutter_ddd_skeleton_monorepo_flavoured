// Flutter imports:
import 'package:flutter/foundation.dart';

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/counter/app_counter_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppCounterPage.route,
  routes: [
    AppCounterPage(),
  ],
  debugLogDiagnostics: kDebugMode,
);
