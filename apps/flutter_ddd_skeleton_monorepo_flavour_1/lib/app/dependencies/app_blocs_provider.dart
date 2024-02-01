import 'package:self_checkout_cvc/app/dependencies/dependencies.dart';
import 'package:self_checkout_presentation/self_checkout_presentation.dart';

/// Global blocs provider
final blocsProvider = [
  BlocProvider<SessionBloc>(create: (context) => getIt()),
  BlocProvider<LightsBloc>(create: (context) => getIt()),
  BlocProvider<SupervisorBloc>(create: (context) => getIt()),
];
