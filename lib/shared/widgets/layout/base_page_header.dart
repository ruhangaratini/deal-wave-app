import 'package:flutter/material.dart';

import '../../extensions/get_text_theme_extension.dart';

class BasePageHeader extends StatelessWidget {
  final String title;
  final List<Widget>? children;

  const BasePageHeader({super.key, required this.title, this.children});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Text(title, style: theme.text.titleMedium),
            const Spacer(),
            ...?children,
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 10),
      ],
    );
  }
}
