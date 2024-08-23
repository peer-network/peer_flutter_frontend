import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/line_chart.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/balance_per_day_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_left.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_bottom.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/data/models/wallet_model.dart';

Widget bottomTitleWidgets(BuildContext context, double value, TitleMeta meta,
    Map<DateTime, double> tokensPerDay, DateTime firstMesurementDate) {
  final totalDays = DateTime.now().difference(firstMesurementDate).inDays.toDouble();
  final DateTime date = firstMesurementDate.add(Duration(days: value.toInt()));

  String formattedDate;
  final now = DateTime.now();

  if (value == 0) {
    formattedDate =
        "${firstMesurementDate.day} ${DateFormat('MMM').format(firstMesurementDate)} ${firstMesurementDate.year != now.year
        ? firstMesurementDate.year
        : ''}";
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
    space: AppPaddings.tiny,
    child: Text(
      formattedDate.trim(),
      style: Theme.of(context).textTheme.labelSmall,
      ),
  );
}
