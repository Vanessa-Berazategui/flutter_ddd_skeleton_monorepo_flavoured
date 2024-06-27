// Package imports:

// Project imports:

// Package imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

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
