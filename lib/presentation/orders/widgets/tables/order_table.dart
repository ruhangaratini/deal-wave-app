import 'package:flutter/material.dart';

import '../../../../domain/entities/order_entity.dart';
import '../../../../domain/usecases/orders/data_table_source_orders.dart';
import '../../../../shared/extensions/get_color_theme_extension.dart';
import '../../../../shared/extensions/get_text_theme_extension.dart';
import '../../../../shared/widgets/buttons/base_button.dart';
import '../../../../shared/widgets/buttons/data_table_button.dart';
import '../../../../shared/widgets/modals/base_modal.dart';
import '../../../../shared/widgets/tables/base_data_table.dart';
import '../../pages/edit_order_page.dart';

class OrderTable extends StatelessWidget {
  const OrderTable({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final source = DataTableSourceOrders(
      pageSize: 30,
      actions: (order) => generateActions(order, context),
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
        DataColumn(label: Text('Cliente')),
        DataColumn(label: Text('CNPJ')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('R\$')),
        DataColumn(label: Text('Prazo')),
        DataColumn(label: Text('Última Atualização')),
      ],
    );
  }

  Widget generateActions(OrderEntity order, BuildContext context) {
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
                  title: 'Pedido ${order.code}',
                  child: EditOrderPage(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
