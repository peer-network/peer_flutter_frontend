import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_widget_holder.dart';

class PostPerformanceContent extends StatelessWidget {
  final String postId;

  const PostPerformanceContent({Key? key, required this.postId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final postPerformance = provider.getPostById(postId);
          if (postPerformance == null) {
            return const Center(
              child: Text('Post performance data not found'),
            );
          } else {
            return SingleChildScrollView(
              child: SectionWidgetHolder(postPerformance: postPerformance),
            );
          }
        }
      },
    );
  }
}
