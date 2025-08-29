import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';

class ProductFormPageProvider extends ChangeNotifier {
  bool activeProduct;
  String? name;
  String? code;
  double? price;

  ProductFormPageProvider({ProductEntity? product})
    : activeProduct = product?.active ?? false,
      name = product?.name,
      code = product?.code,
      price = product?.price;

  void setActiveProduct(bool? value) {
    activeProduct = value ?? activeProduct;
    notifyListeners();
  }
}
