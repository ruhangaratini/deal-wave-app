import 'package:flutter/material.dart';

enum MenuItems {
  home,
  products,
  orders;

  IconData getIcon() => switch (this) {
    MenuItems.home => Icons.home_rounded,
    MenuItems.products => Icons.inventory,
    MenuItems.orders => Icons.shopping_cart_rounded,
  };

  String getLabel() => switch (this) {
    MenuItems.home => 'Home',
    MenuItems.products => 'Produtos',
    MenuItems.orders => 'Pedidos',
  };

  String getPath() => switch (this) {
    MenuItems.home => '/home',
    MenuItems.products => '/products',
    MenuItems.orders => '/orders',
  };
}
