import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TopBar.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/block_left.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/block_right.dart';

class PerformanceOfThisPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.red,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate heights and widths based on screen size
          final maxHeight = constraints.maxHeight;
          final maxWidth = constraints.maxWidth;



          final baseHeight = maxHeight / 2;
          final remainingHeight = maxHeight - baseHeight;
          final blockHeight = remainingHeight / 3;
          final blockWidth = maxWidth / 2;

          return Column(
            children: [
              //Expanded(
                //child: 
                Row(
                  children: [
                    LeftBlock(width: blockWidth, height: remainingHeight),
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
