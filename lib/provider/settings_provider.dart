import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale currentLocale = Locale('en');

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeLocale(Locale newLocale) {
    if (currentLocale == newLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
