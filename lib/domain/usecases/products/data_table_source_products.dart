import 'package:flutter/material.dart';

import '../../../presentation/shared/extensions/date_extension.dart';
import '../../entities/product_entity.dart';

class DataTableSourceProducts extends DataTableSource {
  final Widget Function(ProductEntity product) actions;
  final List<ProductEntity> _products = [];
  final int pageSize;
  bool isLoading = false;
  int currentPage = 1;
  int totalRows = 0;

  DataTableSourceProducts({required this.pageSize, required this.actions}) {
    _fetchPage();
  }

  Future<void> _fetchPage() async {
    isLoading = true;
    totalRows = 300;

    await Future.delayed(const Duration(seconds: 1));

    final aux = _products.length;

    for (int i = aux; i < aux + pageSize; i++) {
      _products.add(
        ProductEntity(
          id: i + 1,
          code: 'p$i',
          name: 'Nome do Produto',
          stock: 1,
          price: 1.99,
          active: true,
          updatedAt: DateTime.now(),
        ),
      );
    }

    currentPage++;
    isLoading = false;
    notifyListeners();
  }

  @override
  DataRow? getRow(int index) {
    if (index >= _products.length) {
      if (!isLoading) _fetchPage();

      return DataRow(
        cells: [
          index % pageSize == 0
              ? DataCell(Text('Carregando...'))
              : DataCell.empty,
          DataCell.empty,
          DataCell.empty,
          DataCell.empty,
          DataCell.empty,
          DataCell.empty,
          DataCell.empty,
        ],
      );
    }

    final product = _products[index];

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(actions(product)),
        DataCell(Text(product.code)),
        DataCell(Text(product.name)),
        DataCell(Text(product.stock.toString())),
        DataCell(Text(product.price.toString())),
        DataCell(Text(product.active ? 'Sim' : 'Não')),
        DataCell(Text(product.updatedAt.ddMMyyyy(showHour: true))),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => totalRows;

  @override
  int get selectedRowCount => 0;
}
