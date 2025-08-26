import 'customer_entity.dart';

class OrderEntity {
  final int id;
  String code;
  CustomerEntity customer;
  String status;
  double total;
  DateTime deadline;
  DateTime updatedAt;

  OrderEntity({
    required this.id,
    required this.code,
    required this.customer,
    required this.status,
    required this.total,
    required this.deadline,
    required this.updatedAt,
  });
}
