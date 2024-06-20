import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';

class PerformanceOfThisPost extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  PerformanceOfThisPost({required this.postPerformance});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;
        final blockWidth = maxWidth / 2;

        return Row(
          children: [
            Expanded(
              child: LeftBlock(imageUrl: postPerformance.imageUrl),
            ),
            RightTopBlocks(
              width: blockWidth,
              height: maxHeight,
              postPerformance: postPerformance,
            ),
          ],
        );
      },
    );
  }
}


