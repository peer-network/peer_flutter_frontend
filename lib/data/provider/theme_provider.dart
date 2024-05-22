import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  void onThemeChanged() {
    notifyListeners();
  }
}
