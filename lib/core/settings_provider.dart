import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "ar";
  ThemeMode currentMode = ThemeMode.dark;
  String currentBackgroundPath = "assets/images/IslamiBackground_dark.png";
  Color currentSystemNavigationColorForBackground =
      const Color.fromRGBO(9, 13, 25, 1);
  Color currentSystemNavigationColorForNavigationBar =
      const Color.fromRGBO(20, 26, 46, 1);
  String currentSplashPath = "assets/images/splash_dark.png";
  Color currentContainersBackgroundColor =
      const Color.fromRGBO(20, 26, 46, 0.8);
  Color currentQuranHadithTextColor = Color.fromRGBO(250, 204, 29, 1);

  // dark background Navigation Color.fromRGBO(9, 13, 25, 1);
  // light background Navigation  Color.fromRGBO(213, 211, 211, 1)
  //  dark Navigationbar Color  Color.fromRGBO(20, 26, 46, 1);
  //  light Navigationbar Color  Color.fromRGBO(183, 147, 95, 1);

  void changeLanguage(String newLanguage) {
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void changeMode(ThemeMode newMode) {
    currentMode = newMode;
    notifyListeners();
  }

  void changeBackground(String newBackgroundPath) {
    currentBackgroundPath = newBackgroundPath;
    notifyListeners();
  }

  void changeSystemNavigationColor(Color newSystemNavigationColorForBackground,
      Color newSystemNavigationColorForNavigationBar) {
    currentSystemNavigationColorForBackground =
        newSystemNavigationColorForBackground;
    currentSystemNavigationColorForNavigationBar =
        newSystemNavigationColorForNavigationBar;
    notifyListeners();
  }

  void changeSplash() {
    currentSplashPath = "assets/images/splash.png";
    notifyListeners();
  }

  void changeContainerBackgroundColor(Color newContainersBackgroundColor) {
    currentContainersBackgroundColor = newContainersBackgroundColor;
    notifyListeners();
  }

  void changeQuranHadithTextColor(Color newQuranHadithTextColor) {
    currentQuranHadithTextColor = newQuranHadithTextColor;
    notifyListeners();
  }
}
