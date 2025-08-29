import 'package:flutter/material.dart';

import 'app_router.dart';
import 'services/theme_mode_service.dart';

class AppState extends ChangeNotifier {
  bool loggedIn = false;
  ThemeMode theme = ThemeMode.light;
  AppRouter router = AppRouter();
  final _themeModeService = ThemeModeService();

  AppState() {
    _init();
  }

  Future<void> _init() async {
    theme = await _themeModeService.loadThemePreferences();
    notifyListeners();
  }

  Future<void> setTheme(ThemeMode value) async {
    await _themeModeService.setThemePreferences(theme);
    theme = value;
    notifyListeners();
  }
}
