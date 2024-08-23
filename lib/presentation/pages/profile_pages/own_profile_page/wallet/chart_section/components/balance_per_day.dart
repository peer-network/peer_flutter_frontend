import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/balance_per_day_data.dart';
import 'package:fl_chart/fl_chart.dart';

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
