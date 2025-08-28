import 'package:flutter/material.dart';

import '../../extensions/get_color_theme_extension.dart';

class BaseCheckboxInput extends StatelessWidget {
  final void Function(bool? value) onChanged;
  final bool value;

  const BaseCheckboxInput({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: theme.color.checkbox,
    );
  }
}
