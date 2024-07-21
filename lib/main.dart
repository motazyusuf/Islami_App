import 'package:flutter/material.dart';
import 'package:islami_app/layouts/layout_view.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/settings/settings_view.dart';
import 'package:islami_app/modules/splash/splash_view.dart';
import 'package:islami_app/modules/tasbeh/tasbeh_view.dart';
import 'core/application_theme_manager.dart';
import 'modules/radio/radio_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.lightModeThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        LayoutView.routeName: (context) => LayoutView(),
        HadethView.routeName: (context) => const HadethView(),
        QuranView.routeName: (context) => const QuranView(),
        RadioView.routeName: (context) => const RadioView(),
        SettingsView.routeName: (context) => const SettingsView(),
        SplashView.routeName: (context) => const SplashView(),
        TasbehView.routeName: (context) => const TasbehView(),
      },
    );
  }
}
