import 'package:flutter/material.dart';

import '../../../shared/extensions/date_extension.dart';
import '../../entities/customer_entity.dart';
import '../../entities/order_entity.dart';

class DataTableSourceOrders extends DataTableSource {
  final Widget Function(OrderEntity product) actions;
  final List<OrderEntity> _orders = [];
  final int pageSize;
  bool isLoading = false;
  int currentPage = 1;
  int totalRows = 0;

  DataTableSourceOrders({required this.pageSize, required this.actions}) {
    _fetchPage();
  }

  Future<void> _fetchPage() async {
    isLoading = true;
    totalRows = 300;

    await Future.delayed(const Duration(seconds: 1));

    final aux = _orders.length;

    for (int i = aux; i < aux + pageSize; i++) {
      _orders.add(
        OrderEntity(
          id: i,
          code: 'P$i',
          customer: CustomerEntity(
            id: i,
            name: 'Nome Cliente',
            document: '00.000.000/0000-00',
          ),
          status: 'Aguardando Financeiro',
          total: 1999.99,
          deadline: DateTime(DateTime.now().year + 1),
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
    if (index >= _orders.length) {
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
          DataCell.empty,
        ],
      );
    }

    final order = _orders[index];

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(actions(order)),
        DataCell(Text(order.code)),
        DataCell(Text(order.customer.name)),
        DataCell(Text(order.customer.document)),
        DataCell(Text(order.status)),
        DataCell(Text(order.total.toString())),
        DataCell(Text(order.deadline.ddMMyyyy())),
        DataCell(Text(order.updatedAt.ddMMyyyy(showHour: true))),
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
