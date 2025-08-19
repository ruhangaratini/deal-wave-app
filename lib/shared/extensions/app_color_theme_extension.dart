import 'package:flutter/material.dart';

class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  final Color icon;
  final Color contrastIcon;

  AppColorThemeExtension({required this.icon, required this.contrastIcon});

  @override
  AppColorThemeExtension copyWith({Color? icon, Color? contrastIcon}) {
    return AppColorThemeExtension(
      icon: icon ?? this.icon,
      contrastIcon: contrastIcon ?? this.contrastIcon,
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
    );
  }
}
