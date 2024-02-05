// Flutter imports:
import 'package:flutter/foundation.dart';
// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/counter/app_counter_page.dart';
// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppCounterPage.route,
  routes: [
    AppCounterPage(),
  ],
  debugLogDiagnostics: kDebugMode,
);
