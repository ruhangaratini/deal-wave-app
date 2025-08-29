import 'package:flutter/material.dart';

import '../extensions/app_text_theme_extension.dart';
import 'app_color_theme.dart';

class AppTextTheme {
  AppTextTheme._();

  static const labelInputLight = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColorTheme.textPrimaryLight,
  );
  static const labelInputDark = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColorTheme.textPrimaryDark,
  );

  static AppTextThemeExtension get lightTheme {
    return AppTextThemeExtension(
      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryLight,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 28,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyMediumBold: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      menuLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.w200,
        color: AppColorTheme.textPrimaryDark,
      ),
      menuMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      menuSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyContrastLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyContrastMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyContrastMediumBold: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyContrastSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
    );
  }

  static AppTextThemeExtension get darkTheme {
    return AppTextThemeExtension(
      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryDark,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 28,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyMediumBold: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      menuLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.w200,
        color: AppColorTheme.textPrimaryDark,
      ),
      menuMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      menuSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryDark,
      ),
      bodyContrastLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyContrastMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyContrastMediumBold: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.textPrimaryLight,
      ),
      bodyContrastSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColorTheme.textPrimaryLight,
      ),
    );
  }
}
