// Package imports:

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

// Project imports:

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
