import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';

class ProductFormPageProvider extends ChangeNotifier {
  final bool productExists;
  bool activeProduct;
  String? name;
  String? code;
  double? price;
  double? stock;

  ProductFormPageProvider({ProductEntity? product})
    : productExists = product != null,
      activeProduct = product?.active ?? false,
      name = product?.name,
      code = product?.code,
      price = product?.price,
      stock = product?.stock;

  void setActiveProduct(bool? value) {
    activeProduct = value ?? activeProduct;
    notifyListeners();
  }
}
