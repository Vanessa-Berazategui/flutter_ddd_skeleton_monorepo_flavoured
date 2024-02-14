// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavoured_domain/flutter_ddd_skeleton_monorepo_flavoured_domain.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/src/core/core.dart';

class CounterView extends StatelessWidget {
  const CounterView({
    required this.appBarText,
    required this.emptyCacheText,
    super.key,
  });

  final String appBarText;
  final String emptyCacheText;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final bloc = context.read<CounterBloc>();

    return Scaffold(
      body: BlocConsumer<CounterBloc, CounterState>(
        listenWhen: (previous, current) => previous.failure != current.failure,
        listener: (context, state) {
          if (state.failure != null) {
            context.showWarnMessage(emptyCacheText);
            bloc.cleanFailure();
          }
        },
        buildWhen: (previous, current) =>
            previous.loading != current.loading ||
            previous.value != current.value,
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(title: Text(appBarText)),
                body: Center(
                  child: Text(
                    '${state.value}',
                    style: theme.textTheme.displayLarge,
                  ),
                ),
                floatingActionButton: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(
                      onPressed: bloc.increment,
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(height: 8),
                    FloatingActionButton(
                      onPressed: bloc.decrement,
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(height: 8),
                    FloatingActionButton(
                      onPressed: bloc.save,
                      child: const Icon(Icons.save),
                    ),
                  ],
                ),
              ),
              if (state.loading) const AppBlockingLoadingWidget(),
            ],
          );
        },
      ),
    );
  }
}
