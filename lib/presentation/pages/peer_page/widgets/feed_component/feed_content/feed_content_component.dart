import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_image_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';

class FeedContentComponent extends StatelessWidget {
  const FeedContentComponent({super.key, required this.feed});
  final FeedModel feed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        feed.imageUrls.isNotEmpty
            ? FeedContentImageWidget(
                imageUrls: feed.imageUrls,
              )
            : const SizedBox(),
        feed.contentText != null
            ? FeedContentTextWidget(text: feed.contentText!)
            : const SizedBox(),
      ],
    );
  }
}
