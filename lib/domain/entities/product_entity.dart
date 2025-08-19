class ProductEntity {
  final int id;
  String code;
  String name;
  double stock;
  double price;
  bool active;
  DateTime updatedAt;

  ProductEntity({
    required this.id,
    required this.code,
    required this.name,
    required this.stock,
    required this.price,
    required this.active,
    required this.updatedAt,
  });
}
