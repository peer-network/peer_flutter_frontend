import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_excluded_tags/lists_screen.dart';
import 'package:peer_app/presentation/whitelabel/text_themes.dart';

class BlockedUsersSection extends StatelessWidget {
  final List<String> blockedUsers;

  const BlockedUsersSection({
    Key? key,
    required this.blockedUsers, // Dynamically passed list of blocked users
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the ListsScreen with blocked users
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ListsScreen(
              title: 'Blocked Users',
              description: 'You can find Users to remove them from your Blacklist.',
              items: blockedUsers, // Pass the list of blocked users
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.medium, vertical: AppPaddings.medium),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: AppBorders.creditsSourceBarRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Blocked Users',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? lightTheme.colorScheme.secondary
                        : darkTheme.colorScheme.secondary,
                    fontSize: titleLargeTextStyle.fontSize
                  ),
            ),
            Row(
              children: [
                Text(
                  blockedUsers.length.toString(), // Display the number of blocked users
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? lightTheme.colorScheme.secondary
                            : darkTheme.colorScheme.secondary,                           
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
