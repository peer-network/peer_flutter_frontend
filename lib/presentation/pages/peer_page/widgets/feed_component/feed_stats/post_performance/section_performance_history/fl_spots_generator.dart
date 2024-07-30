import 'package:fl_chart/fl_chart.dart';
import 'dart:core';

List<FlSpot> generateSpots(Map<DateTime, double> likesPerDay, DateTime? createdAt) {
  List<FlSpot> spots = [];
  likesPerDay.forEach((date, likes) {
    double daysSinceStart = date.difference(createdAt ?? DateTime.now()).inDays.toDouble();
    spots.add(FlSpot(daysSinceStart, likes));
  });
  return spots;
}
