import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:intl/intl.dart';

Widget bottomTitleWidgets(BuildContext context, double value, TitleMeta meta, PostPerformanceModel postPerformance) {
  final createdAt = postPerformance.createdAt!;
  final totalDays = DateTime.now().difference(createdAt).inDays.toDouble();
  final DateTime date = createdAt.add(Duration(days: value.toInt()));

  TextStyle style = TextStyle(
    color: Theme.of(context).brightness == Brightness.light
        ? LightColors.textBright
        : DarkColors.textPrimary,
  );

  String formattedDate;
  final now = DateTime.now();

  if (value == 0) {
    formattedDate = "${createdAt.day} ${DateFormat('MMM').format(createdAt)} ${createdAt.year != now.year ? createdAt.year : ''}";
  } else if (value == totalDays) {
    if (date.year == now.year) {
      formattedDate = "${date.day} ${DateFormat('MMM').format(date)}";
    } else {
      formattedDate = "${date.day} ${DateFormat('MMM').format(date)} ${date.year}";
    }
  } else {
    return const SizedBox.shrink();
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 6,
    child: Text(formattedDate.trim(), style: style),
  );
}
