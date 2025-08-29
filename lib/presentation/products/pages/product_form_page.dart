import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/product_entity.dart';
import '../../shared/extensions/get_text_theme_extension.dart';
import '../../shared/widgets/buttons/base_button.dart';
import '../../shared/widgets/inputs/base_checkbox_input.dart';
import '../../shared/widgets/inputs/base_input.dart';
import '../../shared/widgets/inputs/base_number_input.dart';
import '../providers/product_form_page_provider.dart';

const double _kInputSpacerWidth = 24;

class ProductFormPage extends StatelessWidget {
  final ProductEntity? product;

  const ProductFormPage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ChangeNotifierProvider(
      create: (_) => ProductFormPageProvider(product: product),
      child: Consumer<ProductFormPageProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text('Produto Ativo', style: theme.text.bodyMedium),
                        BaseCheckboxInput(
                          value: provider.activeProduct,
                          onChanged: provider.setActiveProduct,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: BaseInput(
                        label: 'Nome do Produto',
                        hint: 'Produto',
                        initialValue: provider.name,
                        onChanged: (value) {
                          provider.name = value;
                        },
                      ),
                    ),
                    const SizedBox(width: _kInputSpacerWidth),
                    Flexible(
                      child: BaseInput(
                        label: 'Código',
                        hint: 'P0001',
                        initialValue: provider.code,
                        onChanged: (value) {
                          provider.code = value;
                        },
                      ),
                    ),
                    const SizedBox(width: _kInputSpacerWidth),
                    Flexible(
                      child: BaseNumberInput(
                        label: 'Preço',
                        hint: 'R\$',
                        initialValue: provider.price?.toString(),
                        onChanged: (value) {
                          provider.price = double.tryParse(value);
                        },
                      ),
                    ),
                    const SizedBox(width: _kInputSpacerWidth),
                    Flexible(
                      child: BaseNumberInput(
                        label: 'Estoque',
                        hint: '123',
                        initialValue: provider.stock?.toString(),
                        readOnly: provider.productExists,
                        onChanged: (value) {
                          provider.stock = double.tryParse(value);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Estoque', style: theme.text.titleSmall),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BaseButton(
                      onPressed: () {},
                      child: Text(
                        'Salvar',
                        style: theme.text.bodyContrastLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
