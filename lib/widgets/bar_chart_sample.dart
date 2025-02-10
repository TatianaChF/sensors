import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChart extends StatelessWidget {
  const _BarChart();

  @override
  Widget build(BuildContext build) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData, // сведения о сенсорном взаимодейтсвии
        titlesData: titlesData, // сведения о заголовках
        borderData: borderData, // настройка отображения границы
        barGroups: barGroups, // список для отображения столбачтых диаграмм
        gridData: const FlGridData(show: false), // скрывать данные фоновой сетки
        alignment: BarChartAlignment.spaceAround, // выравнивание barGroups
        maxY: 10 // максимальное значени y
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

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Color.fromARGB(255, 183, 231, 192),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mn';
        break;
      case 1:
        text = 'Te';
        break;
      case 2:
        text = 'Wd';
        break;
      case 3:
        text = 'Tu';
        break;
      case 4:
        text = 'Fr';
        break;
      case 5:
        text = 'St';
        break;
      case 6:
        text = 'Sn';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

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

  FlBorderData get borderData => FlBorderData(
    show: false,
  ); 

  LinearGradient get _barsGradient => LinearGradient(
        colors: [
          Color.fromARGB(255, 183, 231, 192),
          Color(0xFFD4E4D7),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 8,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 10,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 14,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 15,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 13,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: 10,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: 16,
              gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
  ];
}

class BarChartSample extends StatefulWidget {
  const BarChartSample({
    super.key
  });

  @override
  State<StatefulWidget> createState() => BarChartSampleState();
}

class BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1.6,
      child: _BarChart(),
    );
  }
}