import 'package:flutter/material.dart';

import '../../extensions/get_text_theme_extension.dart';

class BaseDropdownInput<T> extends StatelessWidget {
  final String label;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final void Function(T? value) onChanged;

  const BaseDropdownInput({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.text.labelMedium),
        const SizedBox(height: 10),
        DropdownButtonFormField(
          items: items,
          hint: Text('Selecione', style: theme.text.bodyMedium),
          value: value,
          onChanged: onChanged,
          style: theme.text.bodyMedium,
          isExpanded: true,
          decoration: InputDecoration(),
        ),
      ],
    );
  }
}
