import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TitleBar.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';

class postPerformanceContent extends StatelessWidget {
  const postPerformanceContent({
    Key? key,
    required this.titleBarHeight,
    required this.blockHeight,
  });

  final double titleBarHeight;
  final double blockHeight;

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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: titleBarHeight, 
                  child: TitleBar(
                    title: "Perfomance of this Post"
                  )
                ),
                Container(
                  height: blockHeight, // Use calculated height
                  child: PerformanceOfThisPost(),
                ),
                Container(
                  height: titleBarHeight, 
                  child: TitleBar(
                    title: "History of post performance"
                  )
                ),
                Container(
                  height: blockHeight, // Use calculated height
                  child: PerformanceHistory(),
                ),
                Container(
                  height: titleBarHeight, 
                  child: TitleBar(
                    title: "Income sources"
                  )
                ),
                Container(
                  height: blockHeight, // Use calculated height
                  child: IncomeSources(postPerformance: postPerformance),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}