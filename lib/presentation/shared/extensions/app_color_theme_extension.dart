import 'package:flutter/material.dart';

class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  final Color icon;
  final Color contrastIcon;
  final Color primaryButton;
  final Color checkbox;
  final Color readOnlyInput;

  AppColorThemeExtension({
    required this.icon,
    required this.contrastIcon,
    required this.primaryButton,
    required this.checkbox,
    required this.readOnlyInput,
  });

  @override
  AppColorThemeExtension copyWith({
    Color? icon,
    Color? contrastIcon,
    Color? primaryButton,
    Color? checkbox,
    Color? readOnlyInput,
  }) {
    return AppColorThemeExtension(
      icon: icon ?? this.icon,
      contrastIcon: contrastIcon ?? this.contrastIcon,
      primaryButton: primaryButton ?? this.primaryButton,
      checkbox: checkbox ?? this.checkbox,
      readOnlyInput: readOnlyInput ?? this.readOnlyInput,
    );
  }

  @override
  AppColorThemeExtension lerp(
    covariant ThemeExtension<AppColorThemeExtension>? other,
    double t,
  ) {
    if (other is! AppColorThemeExtension) return this;

    return AppColorThemeExtension(
      icon: Color.lerp(icon, other.icon, t)!,
      contrastIcon: Color.lerp(contrastIcon, other.contrastIcon, t)!,
      primaryButton: Color.lerp(primaryButton, other.primaryButton, t)!,
      checkbox: Color.lerp(checkbox, other.checkbox, t)!,
      readOnlyInput: Color.lerp(readOnlyInput, other.readOnlyInput, t)!,
    );
  }
}
