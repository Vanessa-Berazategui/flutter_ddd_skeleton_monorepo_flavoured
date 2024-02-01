import 'package:flutter_ddd_skeleton_monorepo_presentation/flutter_ddd_skeleton_monorepo_presentation.dart';
import 'package:flutter_ddd_skeleton_monorepo_presentation/src/counter/bloc/counter_bloc.dart';
import 'package:flutter_ddd_skeleton_monorepo_presentation/src/counter/widget/widget.dart';

class CounterView extends StatelessWidget {
  const CounterView({
    required this.appBarText,
    super.key,
  });

  final String appBarText;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(title: Text(appBarText)),
      body: const Center(child: CounterTextWidget()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
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
        ],
      ),
    );
  }
}
