import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/fl_spots_generator.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/title_widgets.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/gradient_colors.dart';
import 'dart:math';  // Import dart:math to use max

class PerformanceHistory extends StatefulWidget {
  final PostPerformanceModel postPerformance;

  const PerformanceHistory({super.key, required this.postPerformance});

  @override
  State<PerformanceHistory> createState() => _PerformanceHistoryState();
}

class _PerformanceHistoryState extends State<PerformanceHistory> {
  @override
  Widget build(BuildContext context) {
    final spots = generateSpots(widget.postPerformance.likesPerDay, widget.postPerformance.createdAt);
    final createdAt = widget.postPerformance.createdAt ?? DateTime.now();
    final totalDays = DateTime.now().difference(createdAt).inDays.toDouble();
    final maxY = widget.postPerformance.likesPerDay.values.fold(0.0, max);

    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: false,
                  drawVerticalLine: false,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    axisNameWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Zeit', style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) => bottomTitleWidgets(context, value, meta, createdAt, totalDays),
                    ),
                  ),
                  leftTitles: AxisTitles(
                    axisNameWidget: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Gems', style: Theme.of(context).textTheme.bodyMedium!),
                    ),
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) => leftTitleWidgets(context, value, meta, maxY),
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    left: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    right: BorderSide.none,
                    top: BorderSide.none,
                  ),
                ),
                minX: 0,
                maxX: totalDays,
                minY: 0,
                maxY: maxY,
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: false,
                    gradient: LinearGradient(
                      colors: gradientColors,
                    ),
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(
                      show: false,
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        stops: const [0.2, 1.0],
                        colors: gradientColors,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
