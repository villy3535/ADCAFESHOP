import 'package:flutter/material.dart';
import 'package:adcafeshop/themes/light_mode.dart';
import 'package:adcafeshop/themes/dark_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      themeData = darkMode;
    } else {
      themeData = LightMode;
    }
  }
}
