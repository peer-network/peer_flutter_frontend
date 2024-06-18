import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/feed_comment_view.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_header_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_image_description_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedCardComponent extends StatefulWidget {
  const FeedCardComponent({super.key, required this.post});

  final PostModel post;

  @override
  State<FeedCardComponent> createState() => _FeedCardComponentState();
}

class _FeedCardComponentState extends State<FeedCardComponent> {
  bool showComments = true;

  @override
  Widget build(BuildContext context) {
    final PostModel post = widget.post;
    ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
    return FeedTile(
      child: Column(
        children: [
          // Feed header
          FeedHeaderComponent(user: post.creator),
          // Feed content
          if (post is ImagePost) ...[
            FeedContentComponent(post: post, currentIndex: currentIndex),
          ] else ...[
            FeedContentComponent(post: post),
          ],
          // Feed actions
          // Passing feed model to FeedActionsComponent
          if (post is ImagePost) ...[
            FeedActionsComponent(feed: post, currentIndex: currentIndex)
          ] else ...[
            FeedActionsComponent(feed: post),
          ],
          // Feed image description
          if (post is ImagePost)
            FeedImageDescriptionComponent(text: post.description),
          const SizedBox(height: AppPaddings.small),
          FeedStatsComponent(feed: widget.post),
          const SizedBox(height: AppPaddings.small),
          // Feed stats
        ],
      ),
    );
  }
}
