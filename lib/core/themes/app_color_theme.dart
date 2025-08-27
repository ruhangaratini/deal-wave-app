import 'package:flutter/material.dart';

import '../../shared/extensions/app_color_theme_extension.dart';

class AppColorTheme {
  AppColorTheme._();

  // General
  static const Color grey = Color(0xFF888888);

  // Light Theme
  static const Color primaryLight = Color(0xFF032313);
  static const Color secondaryLight = Color(0xFFb0de33);
  static const Color backgroundLight = Color(0xFFF0F0F0);
  static const Color inputFillLight = Color(0xFFF5F5F5);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color textPrimaryLight = Color(0xFF1C1C1C);
  static const Color textSecondaryLight = Color(0xFF888888);
  static const Color error = Color(0xFFF2542D);
  static const Color highlight = Color(0xFFFFCE47);
  static const Color chartBlue = Color(0xFF1D3557);
  static const Color primaryButtonLight = Color(0xFF377A68);

  // Dark Theme
  static const Color primaryDark = Color(0xFF183424);
  static const Color secondaryDark = Color(0xFFB6E937);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color inputFillDark = Color(0xFF2C2C2E);
  static const Color cardDark = Color(0xFF1F1F1F);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFAAAAAA);
  static const Color chartBlueDark = Color(0xFF3A5A98);
  static const Color primaryButtonDark = Color(0xFF377A68);

  static AppColorThemeExtension get lightTheme {
    return AppColorThemeExtension(
      icon: textPrimaryLight,
      contrastIcon: textPrimaryDark,
      primaryButton: primaryButtonLight,
    );
  }

  static AppColorThemeExtension get darkTheme {
    return AppColorThemeExtension(
      icon: textPrimaryLight,
      contrastIcon: textPrimaryDark,
      primaryButton: primaryButtonDark,
    );
  }
}
