import 'package:flutter_ddd_skeleton_monorepo_presentation/src/core/core.dart';
import 'package:flutter_ddd_skeleton_monorepo_presentation/src/counter/bloc/counter_bloc.dart';
import 'package:flutter_ddd_skeleton_monorepo_presentation/src/flutter_ddd_skeleton_monorepo_presentation.dart';

abstract class CounterPage<View extends Widget> extends GoRoute {
  CounterPage({
    required super.path,
    required super.name,
    required CreateBloc<CounterBloc> bloc,
    required this.view,
  }) : super(
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider<CounterBloc>(
              create: bloc,
              child: view,
            ),
          ),
        );

  final View view;
}
