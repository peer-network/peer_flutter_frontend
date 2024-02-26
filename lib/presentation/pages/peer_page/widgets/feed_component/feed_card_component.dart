import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/feed_cooment_view.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_header_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_image_description_component.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedCardComponent extends StatefulWidget {
  const FeedCardComponent({super.key, required this.feed});

  final FeedModel feed;

  @override
  State<FeedCardComponent> createState() => _FeedCardComponentState();
}

class _FeedCardComponentState extends State<FeedCardComponent> {
  bool showComments = true;

  @override
  Widget build(BuildContext context) {
    return FeedTile(
      child: Column(
        children: [
          // Feed header
          FeedHeaderComponent(user: widget.feed.creator),
          // Feed content
          FeedContentComponent(feed: widget.feed),
          // Feed actions
          const FeedActionsComponent(),
          // Feed image description
          if (widget.feed.imageDescription != null)
            FeedImageDescriptionComponent(text: widget.feed.imageDescription!),
          const SizedBox(height: AppPaddings.small),
          // Feed stats
          showComments
              ? FeedCoomentView(
                  comments: widget.feed.comments,
                )
              : Container()
          // Comments
        ],
      ),
    );
  }
}
