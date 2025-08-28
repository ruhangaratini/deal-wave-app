import 'package:flutter/material.dart';

import 'app_color_theme_extension.dart';

extension GetColorThemeExtension on ThemeData {
  AppColorThemeExtension get color => extension<AppColorThemeExtension>()!;
}
