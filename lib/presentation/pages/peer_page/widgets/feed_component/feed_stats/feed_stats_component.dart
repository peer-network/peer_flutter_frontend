import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/comment_count_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/like_count_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/view_count_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedStatsComponent extends StatelessWidget {
  const FeedStatsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          LikeCountComponent(),
          SizedBox(width: AppPaddings.small),
          ViewCountComponent(),
          Spacer(),
          CommentCountComponent(),
        ],
      ),
    );
  }
}
