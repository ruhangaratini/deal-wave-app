import 'product_entity.dart';

class OrderItemEntity {
  final int id;
  final ProductEntity product;
  final int quantity;

  OrderItemEntity({
    required this.id,
    required this.product,
    required this.quantity,
  });
}
