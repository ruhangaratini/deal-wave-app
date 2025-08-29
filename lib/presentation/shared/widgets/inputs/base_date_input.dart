import 'package:flutter/material.dart';

import '../../extensions/date_extension.dart';
import 'base_input.dart';

class BaseDateInput extends StatefulWidget {
  final String label;
  final String? hint;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime? initialValue;
  final void Function(DateTime? value) onChanged;

  const BaseDateInput({
    super.key,
    required this.label,
    this.hint,
    this.initialValue,
    required this.firstDate,
    required this.lastDate,
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => _BaseDateInputState();
}

class _BaseDateInputState extends State<BaseDateInput> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.initialValue?.ddMMyyyy());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          firstDate: widget.firstDate,
          lastDate: widget.lastDate,
        );

        widget.onChanged(date);
        controller.text = date?.ddMMyyyy() ?? '';
      },
      child: AbsorbPointer(
        child: BaseInput(
          label: widget.label,
          hint: widget.hint,
          controller: controller,
        ),
      ),
    );
  }
}
