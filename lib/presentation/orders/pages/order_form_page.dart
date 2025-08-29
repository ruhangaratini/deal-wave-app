import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/customer_entity.dart';
import '../../../domain/entities/order_entity.dart';
import '../../shared/extensions/get_text_theme_extension.dart';
import '../../shared/widgets/inputs/base_date_input.dart';
import '../../shared/widgets/inputs/base_dropdown_input.dart';
import '../providers/order_form_page_provider.dart';

const double _kInputSpacerWidth = 24;

class OrderFormPage extends StatelessWidget {
  final OrderEntity? order;

  const OrderFormPage({super.key, this.order});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ChangeNotifierProvider(
      create: (_) => OrderFormPageProvider(order: order),
      child: Consumer<OrderFormPageProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: BaseDropdownInput<CustomerEntity>(
                      label: 'Prazo',
                      value: provider.customer,
                      onChanged: (value) {
                        provider.customer = value;
                      },
                      items: [
                        if (order?.customer != null)
                          DropdownMenuItem(
                            value: order!.customer,
                            child: Text(order!.customer.name),
                          ),
                        DropdownMenuItem(
                          value: CustomerEntity(
                            id: 1,
                            name: 'Cliente 1',
                            document: '',
                          ),
                          child: Text('Cliente 1'),
                        ),
                        DropdownMenuItem(
                          value: CustomerEntity(
                            id: 2,
                            name: 'Cliente 2',
                            document: '',
                          ),
                          child: Text('Cliente 2'),
                        ),
                        DropdownMenuItem(
                          value: CustomerEntity(
                            id: 3,
                            name: 'Cliente 3',
                            document: '',
                          ),
                          child: Text('Cliente 3'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: _kInputSpacerWidth),
                  Flexible(
                    flex: 1,
                    child: BaseDateInput(
                      label: 'Prazo',
                      hint: 'dd/mm/yyyy',
                      initialValue: provider.deadline,
                      firstDate: DateTime.now().add(const Duration(days: 30)),
                      lastDate: DateTime.now().add(const Duration(days: 180)),
                      onChanged: (value) {
                        provider.deadline = value;
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
                child: Text('Produtos', style: theme.text.titleSmall),
              ),
            ],
          );
        },
      ),
    );
  }
}
