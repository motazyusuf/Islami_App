import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "ar";
  ThemeMode currentMode = ThemeMode.dark;
  String currentBackgroundPath = "assets/images/IslamiBackground_dark.png";

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
}
