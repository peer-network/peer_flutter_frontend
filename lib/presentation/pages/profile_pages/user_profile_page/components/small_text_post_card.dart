import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/small_header_post_card.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SmallTextPostCard extends StatelessWidget {
  const SmallTextPostCard({super.key, required this.post, required this.user});

  final FeedModel post;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: AppDimensions.profileTextPostsSliderCardWidth,
      constraints: const BoxConstraints(
        maxHeight: AppDimensions.profileTextPostsSliderCardMaxHeight,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(AppPaddings.small).copyWith(right: 0),
            decoration: BoxDecoration(
              borderRadius: AppBorders.defaultRadius,
              // add shadow
              color: CustomColors.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: CustomColors.inactiveBorderColor.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallHeaderPostCard(creator: user, date: post.createdAt),
                const SizedBox(height: AppPaddings.small),
                FeedContentTextWidget(
                  text: post.contentText.toString(),
                  isSmallText: true,
                ),
                const SizedBox(height: AppPaddings.small),
                FeedStatsComponent(
                  feed: post,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
