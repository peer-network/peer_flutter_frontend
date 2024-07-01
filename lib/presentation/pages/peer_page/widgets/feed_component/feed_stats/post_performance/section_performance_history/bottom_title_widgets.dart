import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

Widget bottomTitleWidgets(BuildContext context, double value, TitleMeta meta,
    PostPerformanceModel postPerformance, DateTime firstMesurementDate) {
  final totalDays =
      DateTime.now().difference(firstMesurementDate).inDays.toDouble();
  final DateTime date = firstMesurementDate.add(Duration(days: value.toInt()));

  TextStyle style = TextStyle(
    color: Theme.of(context).brightness == Brightness.light
        ? LightColors.textBright
        : DarkColors.textPrimary,
  );

  String formattedDate;
  final now = DateTime.now();

  if (value == 0) {
    formattedDate =
        "${firstMesurementDate.day} ${DateFormat('MMM').format(firstMesurementDate)} ${firstMesurementDate.year != now.year ? firstMesurementDate.year : ''}";
  } else if (value == totalDays) {
    if (date.year == now.year) {
      formattedDate = "${date.day} ${DateFormat('MMM').format(date)}";
    } else {
      formattedDate =
          "${date.day} ${DateFormat('MMM').format(date)} ${date.year}";
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