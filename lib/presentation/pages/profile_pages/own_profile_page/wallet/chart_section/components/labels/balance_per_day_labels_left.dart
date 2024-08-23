import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import 'package:peer_app/data/models/post_model.dart';
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
