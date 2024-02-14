import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/flutter_ddd_skeleton_monorepo_flavoured_presentation.dart';
import 'package:flutter_ddd_skeleton_monorepo_flavoured_presentation/src/core/core.dart';

class AppBlockingLoadingWidget extends StatelessWidget {
  const AppBlockingLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = context.colors;

    return ColoredBox(
      color: theme.scaffoldBackgroundColor.withOpacity(0.6),
      child: Center(
        child: CircularProgressIndicator(
          color: colors.primary,
        ),
      ),
    );
  }
}
