import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../extensions/get_text_theme_extension.dart';

class BaseInput extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final String? initialValue;
  final String label;
  final String? hint;
  final bool obscureText;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const BaseInput({
    super.key,
    this.controller,
    this.onChanged,
    this.initialValue,
    required this.label,
    this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.text.labelMedium),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          initialValue: initialValue,
          obscureText: obscureText,
          style: theme.text.bodyMedium,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            filled: false,
            hintText: hint,
            hintStyle: theme.text.bodyMedium.copyWith(),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
