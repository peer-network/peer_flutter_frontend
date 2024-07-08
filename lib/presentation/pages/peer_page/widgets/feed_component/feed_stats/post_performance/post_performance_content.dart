import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_widget_holder.dart';

import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_performance_provider.dart';



class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
  }) : super(key: key);

  PostPerformanceModel getHardcodedPostPerformance() {
    final Map<DateTime, double> likesPerDay = {
      DateTime.parse("2024-06-21T00:00:00.000"): 117.40,
      DateTime.parse("2024-06-20T00:00:00.000"): 117.40,
      DateTime.parse("2024-06-19T00:00:00.000"): 96.80,
      DateTime.parse("2024-06-18T00:00:00.000"): 83.20,
      DateTime.parse("2024-06-17T00:00:00.000"): 111.40,
      DateTime.parse("2024-06-16T00:00:00.000"): 104.60,
      DateTime.parse("2024-06-15T00:00:00.000"): 109.00,
      DateTime.parse("2024-06-14T00:00:00.000"): 116.20,
      DateTime.parse("2024-06-13T00:00:00.000"): 108.80,
      DateTime.parse("2024-06-12T00:00:00.000"): 102.00,
      DateTime.parse("2024-06-11T00:00:00.000"): 87.00,
      DateTime.parse("2024-06-10T00:00:00.000"): 117.80,
      DateTime.parse("2024-06-09T00:00:00.000"): 100.40,
      DateTime.parse("2024-06-08T00:00:00.000"): 117.20,
      DateTime.parse("2024-06-07T00:00:00.000"): 112.20,
      DateTime.parse("2024-06-06T00:00:00.000"): 93.20,
      DateTime.parse("2024-06-05T00:00:00.000"): 84.40,
      DateTime.parse("2024-06-04T00:00:00.000"): 119.40,
      DateTime.parse("2024-06-03T00:00:00.000"): 113.80,
      DateTime.parse("2024-06-02T00:00:00.000"): 100.80,
      DateTime.parse("2024-06-01T00:00:00.000"): 117.40,
      DateTime.parse("2024-05-31T00:00:00.000"): 88.40,
      DateTime.parse("2024-05-30T00:00:00.000"): 94.40,
      DateTime.parse("2024-05-29T00:00:00.000"): 116.80,
      DateTime.parse("2024-05-28T00:00:00.000"): 92.80,
      DateTime.parse("2024-05-27T00:00:00.000"): 119.60,
      DateTime.parse("2024-05-26T00:00:00.000"): 80.60,
      DateTime.parse("2024-05-25T00:00:00.000"): 105.60,
      DateTime.parse("2024-05-24T00:00:00.000"): 110.40,
      DateTime.parse("2024-05-23T00:00:00.000"): 84.20,
      DateTime.parse("2024-05-22T00:00:00.000"): 118.20,
      DateTime.parse("2024-05-21T00:00:00.000"): 112.80,
      DateTime.parse("2024-05-20T00:00:00.000"): 119.20,
      DateTime.parse("2024-05-19T00:00:00.000"): 86.60,
      DateTime.parse("2024-05-18T00:00:00.000"): 88.80,
      DateTime.parse("2024-05-17T00:00:00.000"): 93.20,
      DateTime.parse("2024-05-16T00:00:00.000"): 119.20,
      DateTime.parse("2024-05-15T00:00:00.000"): 86.40,
      DateTime.parse("2024-05-14T00:00:00.000"): 81.20,
      DateTime.parse("2024-05-13T00:00:00.000"): 92.60,
      DateTime.parse("2024-05-12T00:00:00.000"): 81.80,
      DateTime.parse("2024-05-11T00:00:00.000"): 90.40,
      DateTime.parse("2024-05-10T00:00:00.000"): 92.00,
      DateTime.parse("2024-05-09T00:00:00.000"): 101.80,
      DateTime.parse("2024-05-08T00:00:00.000"): 114.20,
      DateTime.parse("2024-05-07T00:00:00.000"): 101.80,
      DateTime.parse("2024-05-06T00:00:00.000"): 93.20,
      DateTime.parse("2024-05-05T00:00:00.000"): 93.60,
      DateTime.parse("2024-05-04T00:00:00.000"): 99.80,
      DateTime.parse("2024-05-03T00:00:00.000"): 117.20,
      DateTime.parse("2024-05-02T00:00:00.000"): 89.80,
      DateTime.parse("2024-05-01T00:00:00.000"): 116.60,
      DateTime.parse("2024-04-30T00:00:00.000"): 109.20,
      DateTime.parse("2024-04-29T00:00:00.000"): 106.20,
      DateTime.parse("2024-04-28T00:00:00.000"): 88.20,
      DateTime.parse("2024-04-27T00:00:00.000"): 103.40,
      DateTime.parse("2024-04-26T00:00:00.000"): 109.60,
      DateTime.parse("2024-04-25T00:00:00.000"): 108.40,
      DateTime.parse("2024-04-24T00:00:00.000"): 116.80,
      DateTime.parse("2024-04-23T00:00:00.000"): 119.40,
      DateTime.parse("2024-04-22T00:00:00.000"): 111.00,
    };

    return PostPerformanceModel(
      postId: 12345,
      userId: 67890,
      imageUrls: [
        "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
        "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
        "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
        "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
        "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
        "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
      ],
      postText: 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
      createdAt: DateTime.parse("2024-04-22T12:34:56Z"),
      gemsTotal: 8999,
      gemsToday: 69,
      gemsAllTimeHigh: 420,
      gemsLikes: 1797,
      gemsViews: 2565,
      gemsShares: 857,
      likesPerDay: likesPerDay,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final postPerformance = getHardcodedPostPerformance();
    
  //   return SingleChildScrollView(
  //     child: SectionWidgetHolder(postPerformance: postPerformance),
  //   );
  // }

   @override
  Widget build(BuildContext context) {
    return Consumer<PostPerformanceProvider>(
      builder: (context, provider, child) {
        if (provider.state == PostPerformanceState.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (provider.state == PostPerformanceState.error) {
          return Center(child: Text('Error: ${provider.error}'));
        } else if (provider.state == PostPerformanceState.loaded) {
          return SingleChildScrollView(
            child: SectionWidgetHolder(postPerformance: provider.postPerformance),
          );
        } else {
          return Center(child: Text('No data available'));
        }
      },
    );
  }
}
