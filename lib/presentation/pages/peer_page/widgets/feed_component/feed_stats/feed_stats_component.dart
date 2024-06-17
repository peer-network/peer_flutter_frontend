import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/comment_count_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/like_count_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/view_count_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_scroll_sheet.dart'; // Importing PostPerformanceScreen
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedStatsComponent extends StatelessWidget {
  const FeedStatsComponent({
    super.key,
    required this.feed,
  });

  // pass a variable that contains like count, view count and comment count
  final PostModel feed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          LikeCountComponent(likeCount: feed.likeCount),
          const SizedBox(width: AppPaddings.small),
          ViewCountComponent(viewCount: feed.viewCount),
          const Spacer(),
          CommentCountComponent(
            commentCount: feed.comments.length,
          ),
        ],
      ),
    );
  }
}
