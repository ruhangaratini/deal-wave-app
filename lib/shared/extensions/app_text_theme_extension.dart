import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumBold;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
  final TextStyle menuLarge;
  final TextStyle menuMedium;
  final TextStyle menuSmall;
  final TextStyle bodyContrastLarge;
  final TextStyle bodyContrastMedium;
  final TextStyle bodyContrastMediumBold;
  final TextStyle bodyContrastSmall;

  AppTextThemeExtension({
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodyMediumBold,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.menuLarge,
    required this.menuMedium,
    required this.menuSmall,
    required this.bodyContrastLarge,
    required this.bodyContrastMedium,
    required this.bodyContrastMediumBold,
    required this.bodyContrastSmall,
  });

  @override
  AppTextThemeExtension copyWith({
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodyMediumBold,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? menuLarge,
    TextStyle? menuMedium,
    TextStyle? menuSmall,
    TextStyle? bodyContrastLarge,
    TextStyle? bodyContrastMedium,
    TextStyle? bodyContrastMediumBold,
    TextStyle? bodyContrastSmall,
  }) {
    return AppTextThemeExtension(
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyMediumBold: bodyMediumBold ?? this.bodyMediumBold,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      menuLarge: menuLarge ?? this.menuLarge,
      menuMedium: menuMedium ?? this.menuMedium,
      menuSmall: menuSmall ?? this.menuSmall,
      bodyContrastLarge: bodyContrastLarge ?? this.bodyContrastLarge,
      bodyContrastMedium: bodyContrastMedium ?? this.bodyContrastMedium,
      bodyContrastMediumBold:
          bodyContrastMediumBold ?? this.bodyContrastMediumBold,
      bodyContrastSmall: bodyContrastSmall ?? this.bodyContrastSmall,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other is! AppTextThemeExtension) return this;

    return AppTextThemeExtension(
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyMediumBold: TextStyle.lerp(bodyMediumBold, other.bodyMediumBold, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      menuLarge: TextStyle.lerp(labelSmall, other.menuLarge, t)!,
      menuMedium: TextStyle.lerp(labelSmall, other.menuMedium, t)!,
      menuSmall: TextStyle.lerp(labelSmall, other.menuSmall, t)!,
      bodyContrastLarge: TextStyle.lerp(bodyContrastLarge, other.menuSmall, t)!,
      bodyContrastMedium: TextStyle.lerp(
        bodyContrastMedium,
        other.menuSmall,
        t,
      )!,
      bodyContrastMediumBold: TextStyle.lerp(
        bodyContrastMediumBold,
        other.menuSmall,
        t,
      )!,
      bodyContrastSmall: TextStyle.lerp(bodyContrastSmall, other.menuSmall, t)!,
    );
  }
}
