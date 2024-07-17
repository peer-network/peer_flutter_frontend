import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_widget_holder.dart';


class PostPerformanceContent extends StatelessWidget {
  final String postId;

  const PostPerformanceContent({
    Key? key,
    required this.postId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
      builder: (context, provider, child) {
        if (provider.state == PostProviderState.none) {
          provider.fetchPostById(postId);
          return Center(child: CircularProgressIndicator());
        } else if (provider.state == PostProviderState.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (provider.state == PostProviderState.error) {
          return Center(child: Text('Error: ${provider.error}'));
        } else if (provider.state == PostProviderState.loaded) {
          return SingleChildScrollView(
            child: SectionWidgetHolder(postPerformance: provider.post),
          );
        } else {
          return Center(child: Text('No data available'));
        }
      },
    );
  }
}
