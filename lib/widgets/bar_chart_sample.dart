import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChartSample extends StatelessWidget {
  const _BarChartSample();

  @override
  Widget build(BuildContext build) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData, // сведения о сенсорном взаимодейтсвии
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false, // отключение сенсорного поведения
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Color(0xFFD4E4D7),
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem: (
        BarChartGroupData group,
        int groupIndex,
        BarChartRodData rod,
        int rodIndex,
      ) {
        return BarTooltipItem(
          rod.toY.round().toString(), 
          const TextStyle(
            color: Color(0xFFD4E4D7),
            fontWeight: FontWeight.bold
          ),
        );
      }
    ) // внешний вид всплывающей подсказки
  );
}