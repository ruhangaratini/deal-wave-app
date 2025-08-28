import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../shared/extensions/get_text_theme_extension.dart';
import '../../shared/widgets/buttons/base_button.dart';
import '../../shared/widgets/inputs/base_checkbox_input.dart';
import '../../shared/widgets/inputs/base_input.dart';
import '../../shared/widgets/inputs/base_number_input.dart';
import '../providers/product_form_page_provider.dart';

const double _kInputSpacerWidth = 24;

class ProductFormPage extends StatelessWidget {
  const ProductFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductFormPageProvider(),
      child: _ProductFormPage(),
    );
  }
}

class _ProductFormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<_ProductFormPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<ProductFormPageProvider>(
      builder: (context, value, child) {
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
                        value: value.activeProduct,
                        onChanged: value.setActiveProduct,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: BaseInput(label: 'Nome do Produto', hint: 'Produto'),
                  ),
                  const SizedBox(width: _kInputSpacerWidth),
                  Flexible(
                    child: BaseInput(label: 'Código', hint: 'P0001'),
                  ),
                  const SizedBox(width: _kInputSpacerWidth),
                  Flexible(
                    child: BaseNumberInput(label: 'Preço', hint: 'R\$'),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BaseButton(
                    onPressed: () {},
                    child: Text('Salvar', style: theme.text.bodyContrastLarge),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
