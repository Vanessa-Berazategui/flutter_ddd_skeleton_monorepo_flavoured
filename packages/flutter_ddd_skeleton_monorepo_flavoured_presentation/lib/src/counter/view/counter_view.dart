// Project imports:
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
    final colors = context.colors;

    final bloc = context.read<CounterBloc>();

    return Scaffold(
      body: BlocConsumer<CounterBloc, CounterState>(
        listenWhen: (previous, current) =>
            current.failure != null || current.isDone,
        listener: (context, state) {
          if (state.failure != null) {
            context.showWarnMessage(emptyCacheText);
            bloc.cleanFailure();
          }
        },
        buildWhen: (previous, current) =>
            previous.loading != current.loading ||
            previous.value != current.value ||
            previous.quiz != current.quiz,
        builder: (context, state) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Scaffold(
                appBar: AppBar(title: Text(appBarText)),
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${state.value}',
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: colors.secondary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          state.quiz,
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(color: colors.primary),
                        ),
                      ],
                    ),
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
                    const SizedBox(height: 8),
                    FloatingActionButton(
                      onPressed: bloc.quiz,
                      child: const Icon(Icons.quiz),
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
