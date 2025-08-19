import 'package:flutter/material.dart';

import 'base_button.dart';

class DataTableButton extends StatelessWidget {
  final Icon icon;
  final void Function() onPressed;
  final Color? color;

  const DataTableButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: BaseButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(0),
        color: color,
        child: icon,
      ),
    );
  }
}
