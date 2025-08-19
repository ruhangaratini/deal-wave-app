import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const String _kThemeKey = 'isDarkMode';

  ThemeMode _theme = ThemeMode.light;
  ThemeMode get theme => _theme;

  bool get isDarkMode => _theme == ThemeMode.dark;

  ThemeProvider() {
    _loadTheme();
  }

  void saveTheme() {
    _theme = isDarkMode ? ThemeMode.light : ThemeMode.dark;
    _saveTheme(isDarkMode);
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_kThemeKey) ?? false;
    _theme = isDarkMode ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
  }

  Future<void> _saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kThemeKey, isDark);
  }
}
