// Project imports:

// Project imports:

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

class AppCounterView extends StatelessWidget {
  const AppCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return CounterView(
      appBarText: l10n.counterAppBarTitle,
      emptyCacheText: l10n.counterEmptyCache,
    );
  }
}
