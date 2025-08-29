import 'package:flutter/material.dart';

import '../../../domain/entities/customer_entity.dart';
import '../../../domain/entities/order_entity.dart';
import '../../../domain/entities/order_item_entity.dart';

class OrderFormPageProvider extends ChangeNotifier {
  final bool orderExists;
  CustomerEntity? customer;
  List<OrderItemEntity> items;
  DateTime? deadline;

  OrderFormPageProvider({OrderEntity? order})
    : orderExists = order != null,
      customer = order?.customer,
      items = order?.items ?? [],
      deadline = order?.deadline;
}
