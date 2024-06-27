import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/three_widgets.dart';

class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
  }) : super(key: key);

  Future<Map<DateTime, double>> loadLikesData() async {
    final String jsonString =
        await rootBundle.loadString('assets/likes_per_day.json');
    final Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
    final Map<DateTime, double> likesPerDay = jsonResponse
        .map((key, value) => MapEntry(DateTime.parse(key), value.toDouble()));
    return likesPerDay;
  }

  @override
  Widget build(BuildContext context) {
    // TODO GREGORY - please use the genericfuturebuilder that we already build (ask jonny if you cannot find it)
    return FutureBuilder<Map<DateTime, double>>(
      future: loadLikesData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading data'));
        } else {
          final likesPerDay = snapshot.data!;
          final postPerformance = PostPerformanceModel(
            postId: 1,
            userId: 1,
            imageUrls: [
              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg", //if you add more it will cause overflow for the right blocks
            ],
            //text: '',
            text:
                'Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.Lorem ipsum lorem ipsum lorem ipsum.',
            createdAt: DateTime(2024, 6, 1),
            gemsTotal: 1000,
            gemsToday: 50,
            gemsAllTimeHigh: 1500,
            gemsLikes: 300,
            gemsViews: 500,
            gemsShares: 200,
            likesPerDay: likesPerDay,
          );

          return SingleChildScrollView(
            child: ThreeWidgets(postPerformance: postPerformance),
          );
        }
      },
    );
  }
}
