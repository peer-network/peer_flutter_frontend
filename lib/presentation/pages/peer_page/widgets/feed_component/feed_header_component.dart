import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user.dart';
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
        children: [
          // Avatar
          AvatarComponent(imageUrl: user.profileImageUrl),
          const SizedBox(width: AppPaddings.small),
          // Title
          Text(user.username, style: Theme.of(context).textTheme.titleLarge!),
          const Spacer(),
          // Follow button
          SecondaryButton(text: 'Follow', onPressed: () => print('Follow')),
        ],
      ),
    );
  }
}
