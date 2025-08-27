import 'package:flutter/material.dart';

class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  final Color icon;
  final Color contrastIcon;
  final Color primaryButton;

  AppColorThemeExtension({
    required this.icon,
    required this.contrastIcon,
    required this.primaryButton,
  });

  @override
  AppColorThemeExtension copyWith({
    Color? icon,
    Color? contrastIcon,
    Color? primaryButton,
  }) {
    return AppColorThemeExtension(
      icon: icon ?? this.icon,
      contrastIcon: contrastIcon ?? this.contrastIcon,
      primaryButton: primaryButton ?? this.primaryButton,
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
    );
  }
}
