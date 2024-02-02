// Project imports:
import 'package:flutter_ddd_skeleton_monorepo_flavour_1/app/app.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppBuildContextX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
