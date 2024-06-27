import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'dart:math';
import 'package:peer_app/data/models/post_performance_model.dart';

Widget leftTitleWidgets(BuildContext context, double value, TitleMeta meta, PostPerformanceModel postPerformance) {
  TextStyle style = TextStyle(
    color: Theme.of(context).brightness == Brightness.light
        ? LightColors.textBright
        : DarkColors.textPrimary,
  );

  String text;
  final maxY = postPerformance.likesPerDay.values.fold(0.0, max);
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
    child: Text(text, style: style, textAlign: TextAlign.left),
  );
}
