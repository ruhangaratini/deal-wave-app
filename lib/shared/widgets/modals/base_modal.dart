import 'package:flutter/material.dart';

import '../../extensions/get_text_theme_extension.dart';

class BaseModal extends StatelessWidget {
  final String title;
  final Widget child;

  const BaseModal({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 100),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(title, style: theme.text.titleMedium),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [CloseButton()],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Divider(),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
