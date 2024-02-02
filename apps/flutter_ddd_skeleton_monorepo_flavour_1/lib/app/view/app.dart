// Flutter imports:

import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocsProvider,
      child: MaterialApp.router(
        routerConfig: router,
        theme: theme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
