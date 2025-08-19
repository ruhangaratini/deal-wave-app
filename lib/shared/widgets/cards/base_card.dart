import 'package:flutter/material.dart';

import '../../../core/themes/app_color_theme.dart';

class BaseCard extends StatelessWidget {
  final EdgeInsets? margin;
  final Widget child;

  const BaseCard({super.key, this.margin, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.cardColor,
      margin: margin,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
        side: BorderSide(color: AppColorTheme.grey, width: 0.4),
      ),
      child: child,
    );
  }
}
