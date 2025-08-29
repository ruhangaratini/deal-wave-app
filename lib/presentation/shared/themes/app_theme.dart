import 'package:flutter/material.dart';
import 'app_color_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final inputTheme = InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.secondaryLight),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorTheme.backgroundLight,
      primaryColor: AppColorTheme.primaryLight,
      cardColor: AppColorTheme.cardLight,
      extensions: [AppTextTheme.lightTheme, AppColorTheme.lightTheme],
      dividerTheme: DividerThemeData(color: AppColorTheme.grey, thickness: 0.6),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: inputTheme,
      ),
      inputDecorationTheme: inputTheme,
      dataTableTheme: DataTableThemeData(
        headingTextStyle: AppTextTheme.lightTheme.bodyMediumBold,
        dataTextStyle: AppTextTheme.lightTheme.bodyMedium,
        dividerThickness: 0.1,
        headingRowColor: WidgetStatePropertyAll(Colors.white),
        dataRowColor: WidgetStatePropertyAll(Colors.white),
      ),
      colorScheme: ColorScheme.light(
        primary: AppColorTheme.primaryLight,
        secondary: AppColorTheme.secondaryLight,
        surface: AppColorTheme.backgroundLight,
        error: AppColorTheme.error,
      ),
    );
  }

  static ThemeData get darkTheme {
    final inputTheme = InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColorTheme.secondaryDark),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColorTheme.backgroundDark,
      primaryColor: AppColorTheme.primaryDark,
      cardColor: AppColorTheme.cardDark,
      extensions: [AppTextTheme.darkTheme, AppColorTheme.darkTheme],
      dividerTheme: DividerThemeData(color: AppColorTheme.grey, thickness: 0.6),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: inputTheme,
      ),
      inputDecorationTheme: inputTheme,
      dataTableTheme: DataTableThemeData(
        headingTextStyle: AppTextTheme.darkTheme.bodyMediumBold,
        dataTextStyle: AppTextTheme.darkTheme.bodyMedium,
        dividerThickness: 0.1,
        headingRowColor: WidgetStatePropertyAll(AppColorTheme.cardDark),
        dataRowColor: WidgetStatePropertyAll(AppColorTheme.cardDark),
      ),
      colorScheme: ColorScheme.dark(
        primary: AppColorTheme.primaryDark,
        secondary: AppColorTheme.secondaryDark,
        surface: AppColorTheme.backgroundDark,
        error: AppColorTheme.error,
      ),
    );
  }
}
