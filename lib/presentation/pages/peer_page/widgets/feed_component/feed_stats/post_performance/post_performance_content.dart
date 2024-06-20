import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TitleBar.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';

import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';

import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';


class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
    required this.titleBarHeight,
    required this.blockHeight,
    required this.sectionHeight,
  }) : super(key: key);

  final double titleBarHeight;
  final double blockHeight;
  final double sectionHeight;

  @override
  Widget build(BuildContext context) {
    // Example instance of PostPerformanceModel
    final postPerformance = PostPerformanceModel(
      postId: 1,
      userId: 1,
      imageUrl: '/home/gregory/Documents/PEER/flutter_app-1/assets/images/empty_image.png',
      createdAt: DateTime(2024, 6, 1),
      updatedAt: DateTime.now(),
      gemsTotal: 1000,
      gemsToday: 50,
      gemsAllTimeHigh: 1500,
      gemsLikes: 300,
      gemsViews: 500,
      gemsShares: 200,
    );

    return Column(
      children: [
        //in order to adequately see the widgets you need to comment one of them  
        Container(
          height: titleBarHeight,
          child: 
          TitleBar(title: "Performance of this Post"),
        ),
        Expanded(
          child: PerformanceOfThisPost(postPerformance : postPerformance),
        ),
        Container(
          height: titleBarHeight,
          child: TitleBar(title: "Performance History"),
        ),
        Expanded(
          child: PerformanceHistory(postPerformance: postPerformance),
        ),

        Container(
          height: titleBarHeight,
          child: TitleBar(title: "Income Sources"),
        ),
        Expanded(
          child: IncomeSources(postPerformance: postPerformance),
        ),
      
      ],
    );
  }
}

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


// class PerformanceOfThisPost extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           final maxHeight = constraints.maxHeight;
//           final maxWidth = constraints.maxWidth;
//           final blockWidth = maxWidth / 2;

//           return Row(
//             children: [
//               Expanded(
//                 child: LeftBlock(),
//               ),
//               RightTopBlocks(
//                 width: blockWidth,
//                 height: maxHeight,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

