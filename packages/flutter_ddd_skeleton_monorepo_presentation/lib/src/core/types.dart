import 'package:flutter_ddd_skeleton_monorepo_presentation/flutter_ddd_skeleton_monorepo_presentation.dart';

typedef CreateBloc<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
);

typedef CreateBlocWithParam<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
  dynamic param1,
);
