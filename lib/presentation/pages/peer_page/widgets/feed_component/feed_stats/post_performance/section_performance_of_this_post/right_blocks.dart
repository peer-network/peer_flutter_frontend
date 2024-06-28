import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_label.dart';


class RightBlocks extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const RightBlocks({
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

