import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../core/settings_provider.dart';

class DetailesViewsLayout extends StatelessWidget {
  DetailesViewsLayout({super.key, required this.child});

  Widget? child;

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          systemNavigationBarColor:
              provider.currentSystemNavigationColorForBackground),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(provider.currentBackgroundPath),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(localization!.islami,
                style: Theme.of(context).textTheme.titleLarge),
          ),
          body: Container(
            padding: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 10),
            margin: const EdgeInsetsDirectional.only(
                top: 10, start: 20, end: 20, bottom: 80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: provider.currentContainersBackgroundColor,
            ),
            width: 354,
            height: 652,
            child: child,
          ),
        ),
      ),
    );
    ;
  }
}
