import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final void Function() onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final Widget child;

  const BaseButton({
    super.key,
    required this.onPressed,
    this.color,
    this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding ?? EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        backgroundColor: color ?? theme.colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
      ),
      child: child,
    );
  }
}
