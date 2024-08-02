import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/layouts/layout_view.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/hadeth/widgets/hadeth_details_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/settings/settings_view.dart';
import 'package:islami_app/modules/splash/splash_view.dart';
import 'package:islami_app/modules/tasbeh/tasbeh_view.dart';
import 'package:provider/provider.dart';

import 'core/application_theme_manager.dart';
import 'core/settings_provider.dart';
import 'modules/radio/radio_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var darkNavigationColor = Color.fromRGBO(20, 26, 46, 1);
    var lightNavigationColor = Color.fromRGBO(183, 147, 95, 1);
    var provider = Provider.of<SettingsProvider>(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:
          SystemUiOverlayStyle(systemNavigationBarColor: darkNavigationColor),
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        locale: Locale(provider.currentLanguage),
        title: 'Localizations Sample App',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ApplicationThemeManager.lightModeThemeData,
        darkTheme: ApplicationThemeManager.darkModeThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashView.routeName,
        routes: {
          LayoutView.routeName: (context) => LayoutView(),
          HadethView.routeName: (context) => HadethView(),
          QuranView.routeName: (context) => QuranView(),
          RadioView.routeName: (context) => const RadioView(),
          SettingsView.routeName: (context) => const SettingsView(),
          SplashView.routeName: (context) => const SplashView(),
          TasbehView.routeName: (context) => const TasbehView(),
          QuranDetailsView.routeName: (context) => const QuranDetailsView(),
          HadethDetailsView.routeName: (context) => HadethDetailsView(),
        },
      ),
    );
  }
}
