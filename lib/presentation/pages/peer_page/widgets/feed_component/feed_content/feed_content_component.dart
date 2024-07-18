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
            updatedAt,
            isLiked,
            isViewed,
            isReported,
            isDisliked,
            isSaved,
            user,
            comments,
            amountComments,
            amountLikes,
            amountViews,
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsViews,
            gemsShares,
            likesPerDay,
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
            updatedAt,
            isLiked,
            isViewed,
            isReported,
            isDisliked,
            isSaved,
            user,
            comments,
            amountComments,
            amountLikes,
            amountViews,
            aspectRatio,
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsShares,
            gemsViews,
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
            updatedAt,
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
            gemsTotal,
            gemsToday,
            gemsAllTimeHigh,
            gemsLikes,
            gemsViews,
            gemsShares,
            likesPerDay,
          ) =>
              FeedContentVideoWidget(
            videoUrl: media ?? '', // Provide a fallback value in case media is null
          ),
        )
      ],
    );
  }
}
