import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_color_theme.dart';
import '../../../../shared/extensions/get_text_theme_extension.dart';

class RevenueChart extends StatelessWidget {
  const RevenueChart({super.key});

  List<BarChartGroupData> generateRevenueData() {
    final List<BarChartGroupData> data = [];
    final random = Random();

    for (int i = 0; i < 12; i++) {
      final y = random.nextDouble() * 100000;

      data.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(toY: y, color: AppColorTheme.secondaryDark),
          ],
        ),
      );
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final months = [
      'Jan',
      'Fev',
      'Mar',
      'Abr',
      'Mai',
      'Jun',
      'Jul',
      'Ago',
      'Set',
      'Out',
      'Nov',
      'Dez',
    ];

    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
              getTitlesWidget: (value, meta) {
                return Text(
                  months[value.toInt()],
                  style: theme.text.bodyMedium,
                );
              },
            ),
          ),
        ),
        barGroups: generateRevenueData(),
      ),
    );
  }
}
