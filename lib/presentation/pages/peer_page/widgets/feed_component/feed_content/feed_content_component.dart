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
            text: (id,
                    caption,
                    content,
                    user,
                    createdAt,
                    isLiked,
                    isViewed,
                    isReported,
                    isDisliked,
                    isSaved,
                    comments,
                    amountComments,
                    likeCount,
                    viewCount) =>
                FeedContentTextWidget(
                  text: (post as TextPost).content,
                ),
            image: (id,
                    caption,
                    description,
                    user,
                    comments,
                    createdAt,
                    isLiked,
                    isViewed,
                    isReported,
                    isDisliked,
                    isSaved,
                    imageUrls,
                    amountComments,
                    likeCount,
                    viewCount) =>
                FeedContentImageWidget(
                  imagePost: post as ImagePost,
                ),
            video: (id,
                    videoUrl,
                    caption,
                    description,
                    user,
                    createdAt,
                    isLiked,
                    isViewed,
                    isReported,
                    isDisliked,
                    isSaved,
                    comments,
                    amountComments,
                    likeCount,
                    viewCount) =>
                FeedContentVideoWidget(videoUrl: videoUrl))
      ],
    );
  }
}
