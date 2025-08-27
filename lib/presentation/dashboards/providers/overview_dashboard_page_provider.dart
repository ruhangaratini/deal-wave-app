import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OverviewDashboardPageProvider extends ChangeNotifier {
  bool isLoading = true;
  final List<BarChartGroupData> revenueChartData = [];

  void init() {
    _generateRevenueData();
    Future.delayed(const Duration(milliseconds: 1000), () {
      isLoading = false;
      notifyListeners();
    });
  }

  void _generateRevenueData() {
    final random = Random();

    for (int i = 0; i < 12; i++) {
      final y = random.nextDouble() * 100000;

      revenueChartData.add(
        BarChartGroupData(
          x: i,
          barRods: [BarChartRodData(toY: y)],
        ),
      );
    }
  }
}
