import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_left.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_bottom.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

LineChartData lineChartData(BuildContext context, Map<DateTime, double> tokensPerDay) {
  // If tokensPerDay is empty, return an empty chart configuration
  if (tokensPerDay.isEmpty) {
    throw Exception("Error: Unable to load data. Tokens per day data is empty or invalid.");
  }

  // Get the date of the first measurement
  final firstMeasurementDate = tokensPerDay.keys.first;
  
  // Create spots from the tokensPerDay data
  final spots = tokensPerDay.entries
      .map((e) => FlSpot(
          e.key.difference(firstMeasurementDate).inDays.toDouble(), e.value))
      .toList();
  
  // Determine the maximum Y value from the tokensPerDay values
  final maxY = tokensPerDay.values.fold(0.0, max);

  // Return the LineChartData configured with the tokensPerDay data
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
              context, value, meta, tokensPerDay, firstMeasurementDate),
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: AppDimensions.labelRowLarge,
          interval: maxY / 2,
          getTitlesWidget: (value, meta) =>
              leftTitleWidgets(context, value, meta, tokensPerDay),
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