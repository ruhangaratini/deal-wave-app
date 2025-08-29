import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../shared/extensions/get_color_theme_extension.dart';
import '../../shared/extensions/get_text_theme_extension.dart';
import '../../shared/widgets/buttons/base_button.dart';
import '../../shared/widgets/cards/base_card.dart';
import '../../shared/widgets/inputs/base_input.dart';
import '../../shared/widgets/layout/base_page_header.dart';
import '../../shared/widgets/modals/base_modal.dart';
import '../providers/orders_page_provider.dart';
import '../widgets/tables/order_table.dart';
import 'order_form_page.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OrdersPageProvider(),
      child: _OrdersPage(),
    );
  }
}

class _OrdersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<_OrdersPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        BasePageHeader(
          title: 'Pedidos',
          children: [
            BaseButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BaseModal(
                      title: 'Novo Pedido',
                      child: OrderFormPage(),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text('Novo Pedido', style: theme.text.bodyContrastMedium),
                  const SizedBox(width: 6),
                  Icon(
                    Icons.add_circle_rounded,
                    color: theme.color.contrastIcon,
                  ),
                ],
              ),
            ),
          ],
        ),
        BaseCard(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Flexible(
                  child: BaseInput(
                    label: 'Buscar',
                    hint: 'Buscar',
                    suffixIcon: Icon(Icons.search, color: theme.color.icon),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        OrderTable(),
      ],
    );
  }
}
