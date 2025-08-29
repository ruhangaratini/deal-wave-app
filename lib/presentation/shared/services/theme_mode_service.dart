import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../enums/local_storage_keys_enum.dart';

class ThemeModeService {
  Future<ThemeMode> loadThemePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(LocalStorageKeysEnum.isDarkMode.getKey()) ?? false) {
      return ThemeMode.dark;
    }

    return ThemeMode.light;
  }

  Future<void> setThemePreferences(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(
      LocalStorageKeysEnum.isDarkMode.getKey(),
      theme == ThemeMode.dark,
    );
  }
}
