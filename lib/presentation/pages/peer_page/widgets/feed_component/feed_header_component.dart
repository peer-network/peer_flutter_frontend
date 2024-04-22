import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedHeaderComponent extends StatelessWidget {
  const FeedHeaderComponent({super.key, required this.user});

  final UserModel user;

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
            onTap: () => Navigator.of(context)
                .push(UserProfilePageRoute(user.id.toString())),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AvatarComponent(imageUrl: user.imageUrl),
                const SizedBox(width: AppPaddings.small),
                // Title
                Text(user.username,
                    style: Theme.of(context).textTheme.titleLarge!),
              ],
            ),
          ),

          // Follow button
          SecondaryButton(
            text: 'Follow',
            onPressed: () => print('Follow'),
            backgroundColor: Theme.of(context).colorScheme.surface,
            isFilled: true,
          ),
        ],
      ),
    );
  }
}
