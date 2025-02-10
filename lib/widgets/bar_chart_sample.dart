import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChartSample extends StatelessWidget {
  const _BarChartSample();

  @override
  Widget build(BuildContext build) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData, // сведения о сенсорном взаимодейтсвии
        titlesData: titlesData // сведения о заголовках
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

  FlTitlesData get titlesData => FlTitlesData(
    show: true, // показывать заголовки
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles
      )
    ), // данный для отрисовки нижних заголовков
    leftTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false)
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false)
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false)
    )
  );


}