import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_image_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_video_widget.dart';

class FeedContentComponent extends StatelessWidget {
  const FeedContentComponent({super.key, required this.post});
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        post.when(
            text: (id, caption, content, creator, comments, createdAt,
                    amountClicks, amountComments, likeCount, viewCount) =>
                FeedContentTextWidget(
                  text: (post as TextPost).content,
                ),
            image: (id,
                    caption,
                    description,
                    creator,
                    comments,
                    imageUrls,
                    createdAt,
                    amountClicks,
                    amountComments,
                    likeCount,
                    viewCount) =>
                FeedContentImageWidget(
                  imageUrls: (post as ImagePost).imageUrls,
                ),
            video: (id,
                    videoUrl,
                    caption,
                    description,
                    creator,
                    comments,
                    createdAt,
                    amountClicks,
                    amountComments,
                    likeCount,
                    viewCount) =>
                FeedContentVideoWidget(videoUrl: videoUrl))
      ],
    );
  }
}
