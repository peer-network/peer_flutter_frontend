import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';

class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example instance of PostPerformanceModel
    final postPerformance = PostPerformanceModel(
      postId: 1,
      userId: 1,
      imageUrl:
          'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
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
        const Text(
          "Performance of this Post",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        PerformanceOfThisPost(postPerformance: postPerformance),
        const Text(
          "Performance History",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Expanded(
          child: PerformanceHistory(postPerformance: postPerformance),
        ),

        const Text(
          "Income Sources",
          style: TextStyle(color: Colors.white, fontSize: 24),
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

  const PerformanceOfThisPost({super.key, required this.postPerformance});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftBlock(imageUrl: postPerformance.imageUrl),
        RightTopBlocks(
          postPerformance: postPerformance,
        ),
      ],
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
