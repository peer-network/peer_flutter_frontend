import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

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
            AvatarComponent(imageUrl: creator.imageUrl),
            const SizedBox(width: AppPaddings.small),
            // Title
            Column(
              children: [
                Text(creator.name,
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
