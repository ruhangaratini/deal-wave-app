import 'package:flutter/material.dart';

class ProductFormPageProvider extends ChangeNotifier {
  bool activeProduct = false;

  void setActiveProduct(bool? value) {
    activeProduct = value ?? activeProduct;
    notifyListeners();
  }
}
