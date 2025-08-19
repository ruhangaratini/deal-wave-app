import 'package:flutter/material.dart';

import '../../../shared/extensions/get_color_theme_extension.dart';
import '../../../shared/extensions/get_text_theme_extension.dart';
import '../../../shared/widgets/buttons/base_button.dart';

import '../../../shared/widgets/cards/base_card.dart';
import '../../../shared/widgets/inputs/base_text_input.dart';
import '../../../shared/widgets/modals/base_modal.dart';
import '../widgets/modals/edit_product_modal.dart';
import '../widgets/tables/product_table.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Row(
          children: [
            Text('Produtos', style: theme.text.titleMedium),
            const Spacer(),
            BaseButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BaseModal(
                      title: 'Novo Produto',
                      child: EditProductModal(),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text('Novo Produto', style: theme.text.bodyMedium),
                  const SizedBox(width: 6),
                  Icon(Icons.add_circle_rounded, color: theme.color.icon),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 10),
        BaseCard(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Flexible(
                  child: BaseTextInput(
                    label: 'Buscar',
                    hint: 'Buscar',
                    suffixIcon: Icon(Icons.search, color: theme.color.icon),
                  ),
                ),
              ],
            ),
          ),
        ),
        ProductTable(),
      ],
    );
  }
}
