import 'package:flutter/material.dart';

import 'app_text_theme_extension.dart';

extension GetTextThemeExtension on ThemeData {
  AppTextThemeExtension get text => extension<AppTextThemeExtension>()!;
}
