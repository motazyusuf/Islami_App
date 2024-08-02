import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/settings/widgets/settings_component.dart';

class SettingsView extends StatelessWidget {
  static const String routeName = "settings";

  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    List<String> language = [localization!.english, localization!.arabic];
    List<String> mode = [localization!.light, localization!.dark];
    // double width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        SettingsComponent(
          options: language,
          optionsName: localization!.language,
        ),
        SettingsComponent(
          options: mode,
          optionsName: localization!.mode,
        )
      ],
    );
  }
}
