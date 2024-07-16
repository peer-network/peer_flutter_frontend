import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/image_slider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/text_box.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ContentBlock extends StatelessWidget {
  final PostModel post;

  const ContentBlock({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = (MediaQuery.of(context).size.width / 2) - 30;
    final double height = MediaQuery.of(context).size.width / 2 - 30;

    return Padding(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
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
                TextContentBox(
              text: content,
              width: width,
              height: height,
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
                ImageSlider(
              imageUrls: imageUrls,
              width: width,
              height: height,
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
                ImageSlider(
              imageUrls: [media],
              width: width,
              height: height,
            ),
          ),
        ],
      ),
    );
  }
}
