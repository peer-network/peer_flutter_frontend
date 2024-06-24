import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class RightTopBlocks extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const RightTopBlocks({
    super.key,
    required this.postPerformance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align columns to the start
      children: [
        PerformanceLabel(
          title: "Total Gems earned",
          amount: postPerformance.gemsTotal.toDouble(),
        ),
        PerformanceLabel(
          title: "Gems earned Today",
          amount: postPerformance.gemsToday.toDouble(),
        ),
        PerformanceLabel(
          title: "Performance Highscore",
          amount: postPerformance.gemsAllTimeHigh.toDouble(),
        ),
      ],
    );
  }
}

class PerformanceLabel extends StatelessWidget {
  const PerformanceLabel({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text and number to the start
      children: [
        SizedBox(
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(amount.toString()),
              const SizedBox(width: 8),
              ImageIcon(
                IconLibrary.diamond.icon,
                color: Colors.white,
                size: 16,
              ), // Diamond icon from IconLibrary
            ],
          ),
        ),
        Text(title),
      ],
    );
  }
}
