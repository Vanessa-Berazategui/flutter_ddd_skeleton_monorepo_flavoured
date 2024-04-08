// Flutter imports:

// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/app.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavour_2/app/theme/material_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: getIt<MaterialTheme>().dark(),
      darkTheme: getIt<MaterialTheme>().light(),
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
