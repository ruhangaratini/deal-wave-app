import 'customer_entity.dart';
import 'order_item_entity.dart';

class OrderEntity {
  final int id;
  String code;
  CustomerEntity customer;
  List<OrderItemEntity> items;
  String status;
  double total;
  DateTime deadline;
  DateTime updatedAt;

  OrderEntity({
    required this.id,
    required this.code,
    required this.customer,
    required this.items,
    required this.status,
    required this.total,
    required this.deadline,
    required this.updatedAt,
  });
}
