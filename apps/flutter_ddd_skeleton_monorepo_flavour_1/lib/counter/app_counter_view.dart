// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/extensions/extensions.dart';

class AppCounterView extends StatelessWidget {
  const AppCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return CounterView(
              bodyText:'Counter View',
            );
  }
}
