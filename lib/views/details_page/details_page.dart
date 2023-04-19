import 'package:crypto_design/screens.dart';
import 'package:fl_chart/fl_chart.dart';

class DetailsPage extends StatelessWidget {
  final dynamic coin;
  final Color lineColor;
  // List of cartesian coordinates
  final List<FlSpot>? data;

  const DetailsPage({
    super.key,
    required this.lineColor,
    this.data,
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      lineChartData,
      // Controls how long chart animates to new data set
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get lineChartData => LineChartData(
        lineTouchData: lineTouchData, // Customize touch points
        gridData: gridData, // Customize grid
        titlesData: titlesData, // Customize axis labels
        borderData: borderData, // Customize border
        lineBarsData: [
          lineChartBarData,
        ],
      );

  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(show: false);

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: true,
        color: lineColor,
        barWidth: 2,
        dotData: FlDotData(show: false),
        spots: data ?? DetailsPage.generateSampleData(),
        belowBarData: BarAreaData(
          show: true,
          color: lineColor.withAlpha(50),
        ),
      );

  static List<FlSpot> generateSampleData() {
    final List<FlSpot> result = [];
    const numPoints = 35;
    const maxY = 6;

    double prev = 0;

    for (int i = 0; i < numPoints; i++) {
      final next = prev +
          Random().nextInt(3).toDouble() % -1000 * i +
          Random().nextDouble() * maxY / 10;

      prev = next;

      result.add(
        FlSpot(i.toDouble(), next),
      );
    }

    return result;
  }
}
