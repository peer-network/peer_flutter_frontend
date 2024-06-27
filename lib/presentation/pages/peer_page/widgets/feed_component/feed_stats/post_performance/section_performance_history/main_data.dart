import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/bottom_title_widgets.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/gradient_colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/left_title_widgets.dart';

LineChartData lineChartData(
    BuildContext context, PostPerformanceModel postPerformance) {
  final firstMesurementDate = postPerformance.likesPerDay.keys.last;
  final spots = postPerformance.likesPerDay.entries
      .map((e) => FlSpot(
          e.key.difference(firstMesurementDate).inDays.toDouble(), e.value))
      .toList();
  final maxY = postPerformance.likesPerDay.values.fold(0.0, max);

  return LineChartData(
    gridData: const FlGridData(
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
          getTitlesWidget: (value, meta) => bottomTitleWidgets(
              context, value, meta, postPerformance, firstMesurementDate),
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 26,
          interval: maxY / 2,
          getTitlesWidget: (value, meta) =>
              leftTitleWidgets(context, value, meta, postPerformance),
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
    maxX: DateTime.now().difference(firstMesurementDate).inDays.toDouble(),
    minY: 0,
    maxY: maxY,
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        gradient: const LinearGradient(
          colors: gradientColors,
        ),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
          gradient:
              const LinearGradient(stops: [0.2, 1.0], colors: gradientColors),
        ),
      ),
    ],
  );
}
