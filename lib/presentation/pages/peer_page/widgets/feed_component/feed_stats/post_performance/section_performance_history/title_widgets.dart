import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'dart:math';

Widget bottomTitleWidgets(BuildContext context, double value, TitleMeta meta, DateTime createdAt, double totalDays) {
  final DateTime date = createdAt.add(Duration(days: value.toInt()));
  final String formattedDate = "${date.day}.${date.month}";

  

  TextStyle style = TextStyle(
    color: Theme.of(context).brightness == Brightness.light
        ? LightColors.textBright
        : DarkColors.textPrimary,
  );

  if (value == 0 || value == totalDays) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(formattedDate, style: style),
    );
  } else if (value == totalDays / 2) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text("Zeit", style: style),
    );
  } else {
    return const SizedBox.shrink();
  }
}

Widget leftTitleWidgets(BuildContext context, double value, TitleMeta meta, double maxY) {
  TextStyle style = TextStyle(
    color: Theme.of(context).brightness == Brightness.light
        ? LightColors.textBright
        : DarkColors.textPrimary,
  );
  String text;
  if (value == maxY || value == maxY / 2) {
    text = value.toInt().toString();
  } else {
    text = '';
  }

  return Transform.rotate(
    angle: -pi / 2,
    child: Text(text, style: style, textAlign: TextAlign.left),
  );
}
