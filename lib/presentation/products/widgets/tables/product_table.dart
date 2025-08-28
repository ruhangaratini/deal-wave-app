import 'package:flutter/material.dart';

import '../../../../domain/entities/product_entity.dart';
import '../../../../domain/usecases/products/data_table_source_products.dart';
import '../../../shared/extensions/get_color_theme_extension.dart';
import '../../../shared/extensions/get_text_theme_extension.dart';
import '../../../shared/widgets/buttons/base_button.dart';
import '../../../shared/widgets/buttons/data_table_button.dart';
import '../../../shared/widgets/modals/base_modal.dart';
import '../../../shared/widgets/tables/base_data_table.dart';
import '../../pages/product_form_page.dart';

class ProductTable extends StatelessWidget {
  const ProductTable({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final source = DataTableSourceProducts(
      pageSize: 30,
      actions: (product) => generateActions(product, context),
    );

    return BaseDataTable(
      source: source,
      rowsPerPage: 10,
      actions: [
        BaseButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('Exportar', style: theme.text.bodyContrastMedium),
              const SizedBox(width: 6),
              Icon(Icons.upload_file_rounded, color: theme.color.contrastIcon),
            ],
          ),
        ),
      ],
      columns: [
        DataColumn(label: Text('#')),
        DataColumn(label: Text('Código')),
        DataColumn(label: Text('Nome')),
        DataColumn(label: Text('Estoque')),
        DataColumn(label: Text('R\$')),
        DataColumn(label: Text('Ativo')),
        DataColumn(label: Text('Última Atualização')),
      ],
    );
  }

  Widget generateActions(ProductEntity product, BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        DataTableButton(
          icon: Icon(Icons.edit_rounded, color: theme.color.contrastIcon),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return BaseModal(
                  title: 'Produto ${product.code}',
                  child: ProductFormPage(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
