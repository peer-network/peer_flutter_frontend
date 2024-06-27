import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ThreeWidgets extends StatelessWidget {
  const ThreeWidgets({
    super.key,
    required this.postPerformance,
  });

  final PostPerformanceModel postPerformance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO Gregory: This tilte and the Performance History have exacly the same style. So, create a widget for this
        const Text(
          "Performance of this Post",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          child: PerformanceOfThisPost(postPerformance: postPerformance),
        ),
        const Text(
          "Performance History",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: AppPaddings.large,
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          child: CustomLineChart(postPerformance: postPerformance),
        ),
        const Text(
          "Income Sources",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: AppPaddings.large,
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          child: IncomeSources(postPerformance: postPerformance),
        ),
      ],
    );
  }
}
