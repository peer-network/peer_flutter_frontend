import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_blocked_users/blocked_users_list.dart';

class BlockedUsersSection extends StatelessWidget {
  //final UserModel user;

  const BlockedUsersSection({
    Key? key,
    //required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the blocked users page
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlockedUsersPage(), // Replace with actual route
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium, vertical: AppPaddings.medium),//12?),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: AppBorders.creditsSourceBarRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Blocked Users',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                            ? lightTheme.colorScheme.primary
                            : darkTheme.colorScheme.primary,
              ),  
            ),
            Row(
              children: [
                Text(
                  //there are no blocked users amount and list in userModel, so for now --> amountFollowed
                  //user.amountFollowed.toString(),
                  "12",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? lightTheme.colorScheme.primary
                            : darkTheme.colorScheme.primary,
                      ),
                ),
                const SizedBox(width: AppPaddings.small),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).brightness == Brightness.light
                            ? lightTheme.iconTheme.color
                            : darkTheme.iconTheme.color,
                  size: AppDimensions.iconSizeSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


