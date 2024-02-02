// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

export 'color_schemes.dart';
export 'text_styles.dart';
export 'theme.dart';

final theme = ThemeData(
  colorScheme: lightColorScheme,
  textTheme: const TextTheme(
    displayLarge: TextStyles.displayLarge,
    displayMedium: TextStyles.displayMedium,
    displaySmall: TextStyles.displaySmall,
    headlineMedium: TextStyles.headlineMedium,
    headlineSmall: TextStyles.headlineSmall,
    titleLarge: TextStyles.titleLarge,
    titleMedium: TextStyles.titleMedium,
    titleSmall: TextStyles.titleSmall,
    bodyLarge: TextStyles.bodyLarge,
    bodyMedium: TextStyles.bodyMedium,
    labelLarge: TextStyles.labelLarge,
    bodySmall: TextStyles.bodySmall,
    labelSmall: TextStyles.labelSmall,
  ),
);

final darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  textTheme: const TextTheme(
    displayLarge: TextStyles.displayLarge,
    displayMedium: TextStyles.displayMedium,
    displaySmall: TextStyles.displaySmall,
    headlineMedium: TextStyles.headlineMedium,
    headlineSmall: TextStyles.headlineSmall,
    titleLarge: TextStyles.titleLarge,
    titleMedium: TextStyles.titleMedium,
    titleSmall: TextStyles.titleSmall,
    bodyLarge: TextStyles.bodyLarge,
    bodyMedium: TextStyles.bodyMedium,
    labelLarge: TextStyles.labelLarge,
    bodySmall: TextStyles.bodySmall,
    labelSmall: TextStyles.labelSmall,
  ),
);
