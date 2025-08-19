// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/enums/menu_items_enum.dart';
import '../../extensions/get_text_theme_extension.dart';

const double _kLeftPadding = 20;
const double _kIconPadding = 8;
const double _kActiveTileWidth = 6;
const double _kTileHeight = 40;

class BaseMenu extends StatelessWidget {
  const BaseMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentPath = GoRouterState.of(context).uri.toString();

    return Container(
      decoration: BoxDecoration(color: theme.primaryColor),
      width: 240,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: _kLeftPadding),
              Icon(Icons.dashboard_rounded, color: Colors.white),
              const SizedBox(width: _kIconPadding),
              Text('Deal Wave', style: theme.text.menuLarge),
            ],
          ),
          const SizedBox(height: 40),
          _SectionTitle(title: 'MENU'),
          const SizedBox(height: 10),
          ...MenuItems.values.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: _NavTile(
                icon: item.getIcon(),
                label: item.getLabel(),
                active: currentPath.startsWith(item.getPath()),
                onTap: () => context.go(item.getPath()),
              ),
            );
          }),
          const SizedBox(height: 20),
          _MenuDivider(),
          const SizedBox(height: 20),
          _SectionTitle(title: 'GERAL'),
          const SizedBox(height: 10),
          _NavTile(
            icon: Icons.settings_rounded,
            label: 'Configurações',
            active: currentPath.startsWith('/settings'),
            onTap: () {},
          ),
          const Spacer(),
          _MenuDivider(),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: _kLeftPadding),
              CircleAvatar(backgroundColor: theme.colorScheme.secondary),
              const SizedBox(width: _kIconPadding),
              Flexible(
                child: Text(
                  'Nome do caba muito foda',
                  style: theme.text.menuMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: _kLeftPadding),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _NavTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  final void Function()? onTap;

  const _NavTile({
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: _kTileHeight,
        child: Row(
          children: [
            if (active)
              Container(
                width: _kActiveTileWidth,
                height: _kTileHeight,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
              ),
            SizedBox(width: _kLeftPadding - (active ? _kActiveTileWidth : 0)),
            Icon(
              icon,
              color: active ? theme.colorScheme.secondary : Colors.white,
            ),
            const SizedBox(width: _kIconPadding),
            Text(label, style: theme.text.menuMedium),
          ],
        ),
      ),
    );
  }
}

class _MenuDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: _kLeftPadding),
      child: Divider(color: Colors.white, thickness: 0.4),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: _kLeftPadding),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(title, style: theme.text.menuMedium),
      ),
    );
  }
}
