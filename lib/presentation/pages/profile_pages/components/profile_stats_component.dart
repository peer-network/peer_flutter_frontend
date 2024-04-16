import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

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
            Text(user.amountOfFollowers.toString(),
                style: Theme.of(context).textTheme.titleLarge),
            Text('Followers',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: CustomColors.secondaryTextColor)),
          ],
        ),
        // Following
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.amountOfFollowers.toString(),
                style: Theme.of(context).textTheme.titleLarge),
            Text('Following',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: CustomColors.secondaryTextColor)),
          ],
        ),
        // Posts
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.amountOfPosts.toString(),
                style: Theme.of(context).textTheme.titleLarge),
            Text('Posts',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: CustomColors.secondaryTextColor)),
          ],
        ),
      ],
    );
  }
}
