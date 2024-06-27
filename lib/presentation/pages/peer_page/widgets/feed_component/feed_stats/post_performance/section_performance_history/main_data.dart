import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/left_title_widgets.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/bottom_title_widgets.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/gradient_colors.dart';

LineChartData mainData(BuildContext context, PostPerformanceModel postPerformance) {
  final spots = postPerformance.likesPerDay.entries
      .map((e) => FlSpot(
          e.key.difference(postPerformance.createdAt!).inDays.toDouble(), e.value))
      .toList();
  final maxY = postPerformance.likesPerDay.values.fold(0.0, max);

  return LineChartData(
    gridData: FlGridData(
      show: false,
      drawVerticalLine: false,

    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (value, meta) => bottomTitleWidgets(context, value, meta, postPerformance),
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 26,
          interval: maxY / 2,
          getTitlesWidget: (value, meta) => leftTitleWidgets(context, value, meta, postPerformance),
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
    maxX: DateTime.now().difference(postPerformance.createdAt!).inDays.toDouble(),
    minY: 0,
    maxY: maxY,
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        gradient: LinearGradient(
          colors: gradientColors,
        ),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
          gradient: LinearGradient(stops: const [0.2, 1.0], colors: gradientColors),
        ),
      ),
    ],
  );
}
