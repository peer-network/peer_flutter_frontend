import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

Widget leftTitleWidgets(BuildContext context, double value, TitleMeta meta, Map<DateTime, double> tokensPerDay) {
  String text;
  final maxY = tokensPerDay.values.fold(0.0, max) ?? 0.0;
  
  if (value == 0) {
    text = '';
  } else if (value == maxY / 2) {
    text = (maxY / 2).round().toString();
  } else if (value == maxY) {
    text = maxY.round().toString();
  } else {
    return const SizedBox.shrink();
  }

  return Transform.rotate(
    angle: -pi / 2,
    child: Text(
      text,
      style: Theme.of(context).textTheme.labelSmall,
      textAlign: TextAlign.left,
    ),
  );
}