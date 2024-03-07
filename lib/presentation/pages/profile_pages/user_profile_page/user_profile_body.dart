import 'package:flutter/material.dart';
import 'package:peer_app/core/types/post_types.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_image_post_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_image_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_info_section.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileImageSection(imgUrl: user.profileImageUrl),
          const SizedBox(height: AppPaddings.large),
          ProfileInfoSection(user: user),
          const SizedBox(height: AppPaddings.large),
          ProfileImagePostSection(
            posts: user.posts
                .where((post) => post.postType == PostType.image)
                .toList(),
          ),
          const SizedBox(height: AppPaddings.large),
          ProfileTextPostSection(
            posts: user.posts
                .where((post) => post.postType == PostType.text)
                .toList(),
            user: user,
          ),
        ],
      ),
    );
  }
}

class ProfileTextPostSection extends StatelessWidget {
  const ProfileTextPostSection(
      {super.key, required this.posts, required this.user});

  final List<FeedModel> posts;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: posts
            .map(
              (post) => SmallTextPostCard(
                user: user,
                post: post,
              ),
            )
            .toList(),
      ),
    );
  }
}

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
                const FeedStatsComponent(
                  isSmallText: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallHeaderPostCard extends StatelessWidget {
  const SmallHeaderPostCard(
      {super.key, required this.creator, required this.date});

  final UserModel creator;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    // Avatar
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.medium, vertical: AppPaddings.small),
      child: InkWell(
        onTap: () =>
            Navigator.of(context).push(UserProfilePageRoute(creator.id)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AvatarComponent(imageUrl: creator.profileImageUrl),
            const SizedBox(width: AppPaddings.small),
            // Title
            Column(
              children: [
                Text(creator.username,
                    style: Theme.of(context).textTheme.bodyLarge!),
                const SizedBox(height: AppPaddings.tiny),
                // datetime as "23. January" with formatted date
                Text(
                  "23. January",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
