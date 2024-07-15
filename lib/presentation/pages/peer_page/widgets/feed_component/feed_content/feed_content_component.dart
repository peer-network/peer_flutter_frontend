import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_image_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_video_widget.dart';

class FeedContentComponent extends StatelessWidget {
  const FeedContentComponent(
      {super.key, required this.post, this.currentIndex});
  final PostModel post;
  final ValueNotifier<double>? currentIndex;

  Widget buildContentWidget(PostModel post) {
    if (post is TextPost) {
      return FeedContentTextWidget(
        caption: post.title,
        text: post.content,
      );
    } else if (post is ImagePost) {
      return FeedContentImageWidget(
        imagePost: post,
        currentIndex: currentIndex!,
      );
    } else if (post is VideoPost) {
      return FeedContentVideoWidget(videoUrl: post.media!);
    } else {
      return const Text(
          'Unknown post type (if you see this contact the developer pls thx)');
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildContentWidget(post);
  }
}
