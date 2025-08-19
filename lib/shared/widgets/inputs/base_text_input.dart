import 'package:flutter/material.dart';

import '../../extensions/get_text_theme_extension.dart';

class BaseTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final String label;
  final String? hint;
  final bool obscureText;
  final Icon? suffixIcon;

  const BaseTextInput({
    super.key,
    this.controller,
    this.onChanged,
    required this.label,
    this.hint,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.text.labelMedium),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          style: theme.textTheme.bodyMedium,
          decoration: InputDecoration(
            filled: true,
            hintText: hint,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}
