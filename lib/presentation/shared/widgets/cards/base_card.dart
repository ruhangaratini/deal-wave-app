import 'package:flutter/material.dart';

import '../../themes/app_color_theme.dart';

class BaseCard extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? color;
  final Widget child;

  const BaseCard({
    super.key,
    this.margin,
    this.padding,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: color ?? theme.cardColor,
      margin: margin,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(18),
        side: BorderSide(color: AppColorTheme.grey, width: 0.3),
      ),
      child: padding != null ? Padding(padding: padding!, child: child) : child,
    );
  }
}
