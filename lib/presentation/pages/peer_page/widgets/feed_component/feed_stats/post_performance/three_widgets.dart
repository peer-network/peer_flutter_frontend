import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_widget.dart';

//TODO rename three widgets
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
        SectionWidget(
          title: "Performance of this Post",
          content: PerformanceOfThisPost(postPerformance: postPerformance),
        ),
        SectionWidget(
          title: "Performance History",
          content: CustomLineChart(postPerformance: postPerformance),
        ),
        SectionWidget(
          title: "Income Sources",
          content: IncomeSources(postPerformance: postPerformance),
        ),
      ],
    );
  }
}
