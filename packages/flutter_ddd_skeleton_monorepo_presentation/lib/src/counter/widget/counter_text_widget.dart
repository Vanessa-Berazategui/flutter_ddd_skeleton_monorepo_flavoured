// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_presentation/flutter_ddd_skeleton_monorepo_presentation.dart';
import 'package:flutter_ddd_skeleton_monorepo_presentation/src/core/core.dart';

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Text(
          '${state.value}',
          style: theme.textTheme.displayLarge,
        );
      },
    );
  }
}
