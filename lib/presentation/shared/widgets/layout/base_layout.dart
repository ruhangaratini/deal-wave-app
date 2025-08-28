import 'package:flutter/material.dart';

import 'base_menu.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // final isDesktop = MediaQuery.of(context).size.width >= 800;

    return Scaffold(
      body: Row(
        children: [
          BaseMenu(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
