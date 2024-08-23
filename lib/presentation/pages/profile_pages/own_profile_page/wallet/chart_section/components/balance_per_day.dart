import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/line_chart.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/balance_per_day_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_left.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/balance_per_day_labels_bottom.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/data/models/wallet_model.dart';

class BalancePerDay extends StatefulWidget {
  final Map<DateTime, double> tokensPerDay;

  const BalancePerDay({super.key, required this.tokensPerDay});

  @override
  State<BalancePerDay> createState() => _BalancePerDayState();
}

class _BalancePerDayState extends State<BalancePerDay> {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppAspectRatios.graphAspectRatio,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPaddings.small)
            .copyWith(right: AppPaddings.extraLarge),
        child: LineChart(
          lineChartData(context, widget.tokensPerDay),
        ),
      ),
    );
  }
}
