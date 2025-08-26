import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../shared/extensions/get_text_theme_extension.dart';

class SalesChart extends StatelessWidget {
  const SalesChart({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BarChart(
      BarChartData(
        rotationQuarterTurns: 1,
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 55,
              getTitlesWidget: (value, meta) {
                final products = ['Prod1', 'Prod2', 'Prod3'];

                return SideTitleWidget(
                  meta: meta,
                  child: Text(
                    products[value.toInt()],
                    style: theme.text.bodyMedium,
                  ),
                );
              },
            ),
          ),
        ),
        gridData: FlGridData(show: true, drawVerticalLine: false),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [BarChartRodData(toY: 400, color: Colors.orange)],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [BarChartRodData(toY: 520, color: Colors.amber)],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(toY: 140, color: Colors.deepOrangeAccent),
            ],
          ),
        ],
      ),
    );
  }
}
