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
          text: (
            id,
            title,
            content,
            createdAt,
            isLiked,
            isViewed,
            isReported,
            isDisliked,
            isSaved,
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsViews,
            gemsShares,
            likesPerDay,
            comments,
            amountComments,
            amountLikes,
            amountViews,
            user,
          ) =>
              FeedContentTextWidget(
            text: content,
          ),
          image: (
            id,
            title,
            mediaDescription,
            media,
            createdAt,
            isLiked,
            isViewed,
            isReported,
            isDisliked,
            isSaved,
            comments,
            amountComments,
            amountLikes,
            amountViews,
            user,
            aspectRatio,
            imageUrls,
            postText,
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsViews,
            gemsShares,
            likesPerDay,
          ) =>
              FeedContentImageWidget(
            imagePost: post as ImagePost,
          ),
          video: (
            id,
            title,
            media,
            mediaDescription,
            createdAt,
            isLiked,
            isViewed,
            isReported,
            isDisliked,
            isSaved,
            comments,
            amountComments,
            amountLikes,
            amountViews,
            user,
            postText,
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsViews,
            gemsShares,
            likesPerDay,
          ) =>
              FeedContentVideoWidget(
            videoUrl: media,
          ),
        )
      ],
    );
  }
}
