import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_header_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_image_description_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FeedCardComponent extends StatefulWidget {
  const FeedCardComponent({super.key, required this.post});

  final PostModel post;

  @override
  State<FeedCardComponent> createState() => _FeedCardComponentState();
}

class _FeedCardComponentState extends State<FeedCardComponent> {
  bool showComments = true;
  ValueNotifier<double> currentIndex = ValueNotifier<double>(0.0);

  Timer? _viewTimer;
  late bool _hasCountedView;

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction >= 0.90) {
      if (_viewTimer == null && !_hasCountedView) {
        _viewTimer = Timer(const Duration(seconds: 2), _onViewTimerComplete);
      }
    } else {
      _viewTimer?.cancel();
      _viewTimer = null;
    }
  }

  void _onViewTimerComplete() {
    if (!_hasCountedView) {
      _hasCountedView = true;
      Provider.of<PostProvider>(context, listen: false)
          .viewPost(widget.post.id);
    }
  }

  @override
  void initState() {
    super.initState();
    // for some reason pulling the model fron the provider and accessing is viewed works
    // but accessing it from the model directly (the one in the widget) does not work
    _hasCountedView = Provider.of<PostProvider>(context, listen: false)
            .getPostByIdFromCache(widget.post.id)
            ?.isViewed ??
        false;
  }

  @override
  void dispose() {
    _viewTimer?.cancel();
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PostModel post = widget.post;

    return FeedTile(
      child: Column(
        children: [
          // Feed header
          FeedHeaderComponent(
            user: post.user,
            postId: post.id,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                DetailedPostPageRoute(
                  post, // Pass the entire imagePost object
                ),
              );
            },
            child: VisibilityDetector(
                key: Key('post-${post.id}'),
                onVisibilityChanged: _onVisibilityChanged,
                child: FeedContentComponent(
                    post: post, currentIndex: currentIndex)),
          ),

          // Feed actions
          // Passing feed model to FeedActionsComponent

          FeedActionsComponent(feed: post, currentIndex: currentIndex),
          // Feed image description
          if (post is ImagePost)
            FeedImageDescriptionComponent(
                text: post.mediaDescription, caption: post.title),
          const SizedBox(height: AppPaddings.small),
          FeedStatsComponent(feed: widget.post),
          const SizedBox(height: AppPaddings.small),
          // Feed stats
        ],
      ),
    );
  }
}
