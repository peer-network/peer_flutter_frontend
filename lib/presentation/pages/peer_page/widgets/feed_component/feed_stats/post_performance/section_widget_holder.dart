import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SectionWidgetHolder extends StatelessWidget {
  const SectionWidgetHolder({
    super.key,
    required this.postPerformance,
  });

  final PostModel postPerformance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Performance of this Post",
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppPaddings.medium,
            bottom: AppPaddings.medium,
          ),
          child: PerformanceOfThisPost(postPerformance: postPerformance),
        ),
        Text(
          "Performance History",
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppPaddings.medium,
            bottom: AppPaddings.medium,
          ),
          child: PostPerformanceChart(postPerformance: postPerformance),
        ),
        Text(
          "Income Sources",
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppPaddings.medium,
            bottom: AppPaddings.medium,
          ),
          child: IncomeSources(postPerformance: postPerformance),
        ),
      ],
    );
  }
}
