import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';


class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
  }) : super(key: key);

  Future<Map<DateTime, double>> loadLikesData() async {
    final String jsonString = await rootBundle.loadString('assets/likes_per_day.json');
    final Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
    final Map<DateTime, double> likesPerDay = jsonResponse.map((key, value) => MapEntry(DateTime.parse(key), value.toDouble()));
    return likesPerDay;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<DateTime, double>>(
      future: loadLikesData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading data'));
        } else {
          final likesPerDay = snapshot.data!;
          final postPerformance = PostPerformanceModel(
            postId: 1,
            userId: 1,
            imageUrl: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
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

class ThreeWidgets extends StatelessWidget {
  const ThreeWidgets({
    super.key,
    required this.postPerformance,
  });

  final PostPerformanceModel postPerformance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Performance of this Post",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          child: PerformanceOfThisPost(postPerformance: postPerformance),
        ),
        const Text(
          "Performance History",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          //child: PerformanceHistory(postPerformance: postPerformance),
          child: CustomLineChart(postPerformance: postPerformance),
        ),
        const Text(
          "Income Sources",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
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
