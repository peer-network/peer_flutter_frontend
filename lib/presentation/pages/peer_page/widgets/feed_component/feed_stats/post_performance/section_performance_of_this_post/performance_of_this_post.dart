import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';

class PerformanceOfThisPost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxHeight = constraints.maxHeight;
          final maxWidth = constraints.maxWidth;
          final baseHeight = maxHeight / 2;
          final remainingHeight = maxHeight - baseHeight;
          final blockHeight = remainingHeight / 3;
          final blockWidth = maxWidth / 2;
          return Column(
            children: [
                Row(
                  children: [
                    LeftBlock(),
                    RightTopBlocks(width: blockWidth,height: blockHeight)
                  ],
                ),
              //),
            ],
          );
        },
      ),
    );
  }
}


