import 'package:flutter/material.dart';

class BaseSwitchInput extends StatelessWidget {
  final bool value;
  final void Function(bool value) onChanged;

  const BaseSwitchInput({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: theme.colorScheme.secondary,
    );
  }
}
