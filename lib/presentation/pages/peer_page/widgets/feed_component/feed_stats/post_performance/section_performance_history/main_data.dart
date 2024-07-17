import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/bottom_title_widgets.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/left_title_widgets.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

LineChartData lineChartData(BuildContext context, PostModel postPerformance) {
  final likesPerDay = postPerformance.likesPerDay ?? {};

  if (likesPerDay.isEmpty) {
    return LineChartData(
      gridData: const FlGridData(show: false, drawVerticalLine: false),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 1,
      minY: 0,
      maxY: 1,
      lineBarsData: [],
    );
  }

  final firstMeasurementDate = likesPerDay.keys.last;
  final spots = likesPerDay.entries
      .map((e) => FlSpot(
          e.key.difference(firstMeasurementDate).inDays.toDouble(), e.value))
      .toList();
  final maxY = likesPerDay.values.fold(0.0, max);

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
              context, value, meta, postPerformance, firstMeasurementDate),
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: AppDimensions.labelRowLarge,
          interval: maxY / 2,
          getTitlesWidget: (value, meta) =>
              leftTitleWidgets(context, value, meta, postPerformance),
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border(
        left: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        right: BorderSide.none,
        top: BorderSide.none,
      ),
    ),
    minX: 0,
    maxX: DateTime.now().difference(firstMeasurementDate).inDays.toDouble(),
    minY: 0,
    maxY: maxY,
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? [lightTheme.colorScheme.tertiary, lightTheme.colorScheme.secondary]
              : [darkTheme.colorScheme.tertiary, darkTheme.colorScheme.secondary],
        ),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
      ),
    ],
  );
}
