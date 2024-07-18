import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_label.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class StatsBlocks extends StatelessWidget {
  final PostModel postPerformance;

  const StatsBlocks({
    super.key,
    required this.postPerformance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PerformanceLabel(
          title: "Total Gems earned",
          amount: postPerformance.gemsTotal!.toDouble(),
        ),
        const SizedBox(height: AppPaddings.small),
        PerformanceLabel(
          title: "Gems earned Today",
          amount: postPerformance.gemsToday!.toDouble(),
        ),
        const SizedBox(height: AppPaddings.small),
        PerformanceLabel(
          title: "Performance Highscore",
          amount: postPerformance.gemsAllTimeHigh!.toDouble(),
        ),
      ],
    );
  }
}
