import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/content_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/stats_block.dart';

class PerformanceOfThisPost extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const PerformanceOfThisPost({super.key, required this.postPerformance});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContentBlock(postPerformance: postPerformance),
        StatsBlocks(postPerformance: postPerformance),
      ],
    );
  }
}
