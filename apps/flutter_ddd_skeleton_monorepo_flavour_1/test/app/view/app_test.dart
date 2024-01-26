import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
