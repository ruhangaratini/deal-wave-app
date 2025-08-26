import 'package:flutter/material.dart';

import '../../../../shared/extensions/date_extension.dart';
import '../../../../shared/extensions/get_color_theme_extension.dart';
import '../../../../shared/extensions/get_text_theme_extension.dart';

class TransactionListCard extends StatelessWidget {
  const TransactionListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        CircleAvatar(
          backgroundColor: theme.colorScheme.surface,
          child: Icon(Icons.shopping_bag_rounded, color: theme.color.icon),
        ),
        const SizedBox(width: 10),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Produto\n', style: theme.text.bodyMediumBold),
              TextSpan(
                text: DateTime.now().ddMMyyyy(),
                style: theme.text.bodyMedium,
              ),
            ],
          ),
        ),
        const Spacer(),
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            children: [
              TextSpan(text: 'Finalizado\n', style: theme.text.bodyMedium),
              TextSpan(text: 'ABC123EFG45', style: theme.text.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
