import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';

class ProfileStatsComponent extends StatelessWidget {
  const ProfileStatsComponent({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Followers
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.amountFollower.toString(),
                style: Theme.of(context).textTheme.labelLarge),
            Text('Followers', style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        // Following
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.amountFollowed.toString(),
                style: Theme.of(context).textTheme.labelLarge),
            Text('Following', style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        // Posts
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.amountPosts.toString(),
                style: Theme.of(context).textTheme.labelLarge),
            Text('Posts', style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
      ],
    );
  }
}
