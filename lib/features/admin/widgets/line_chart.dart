import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final String? title;

  const LineChartWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (title != null)
                Column(
                  children: [
                    const SizedBox(height: 37),
                    Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 37,
                    )
                  ],
                ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 16, left: 6),
                  child: _LineChart(),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}

class _LineChart extends StatelessWidget {
  const _LineChart();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LineChart(
      LineChartData(
        lineTouchData: const LineTouchData(enabled: false),
        gridData: const FlGridData(show: false),
        titlesData: titlesData2,
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.blue.withOpacity(0.2),
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: theme.primaryColor.withOpacity(0.5),
            barWidth: 1.8,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: theme.primaryColor.withOpacity(0.2),
            ),
            spots: const [
              FlSpot(0, 1),
              FlSpot(3, 2.8),
              FlSpot(7, 1.2),
              FlSpot(10, 2.8),
              FlSpot(12, 2.6),
              FlSpot(13, 3.9),
              FlSpot(14, 4),
            ],
          ),
        ],
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      ),
      duration: const Duration(milliseconds: 250),
    );
  }

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            getTitlesWidget: leftTitleWidgets,
            showTitles: true,
            interval: 1,
            reservedSize: 40,
          ),
        ),
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '0';
        break;
      case 2:
        text = '100';
        break;
      case 3:
        text = '300';
        break;
      case 4:
        text = '400';
        break;
      case 5:
        text = '500';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('SEPT', style: style);
        break;
      case 7:
        text = const Text('OCT', style: style);
        break;
      case 12:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );
}
