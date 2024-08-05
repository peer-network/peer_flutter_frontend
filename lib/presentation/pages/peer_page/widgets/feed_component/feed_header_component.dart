import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_content.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';

class FeedHeaderComponent extends StatelessWidget {
  const FeedHeaderComponent({super.key, required this.user, required this.postId});

  final UserModel user;
  final String postId;

  @override
  Widget build(BuildContext context) {
    // TODO: implement user profile page navigation
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Avatar
          InkWell(
            onTap: () =>
                Navigator.of(context).push(UserProfilePageRoute(user.id)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AvatarComponent(imageUrl: user.imgUrl),
                const SizedBox(width: AppPaddings.small),
                // Title
                Text(user.username,
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ),

          // Follow button and new icon button
          Row(
            children: [
              SecondaryButton(
                text: 'Follow',
                onPressed: () {},
                backgroundColor: Theme.of(context).brightness == Brightness.light
                    ? LightColors.followBackground
                    : DarkColors.followBackground,
                isFilled: true,
              ),
              CustomIconButton(
                icon: IconLibrary.stats_post_performance,
                sizeType: SizeType.small,
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostPerformanceContent(postId: postId!),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
