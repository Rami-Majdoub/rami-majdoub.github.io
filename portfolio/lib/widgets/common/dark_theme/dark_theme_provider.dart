import 'package:flutter/material.dart';

import 'dark_theme_preference.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }

  void switchTheme(){
    _darkTheme = !_darkTheme;
    darkThemePreference.setDarkTheme(_darkTheme);
    notifyListeners();
  }
  
}