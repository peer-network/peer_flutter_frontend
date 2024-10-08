import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_stats_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/follower_button_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
      child: Column(
        children: [
          // Username, Follow Button
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(user.username!,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? LightColors.textPrimary
                            : DarkColors.textPrimary)),
                FollowerButtonComponent(
                  user: user,
                  textStyle: Theme.of(context).textTheme.titleMedium!,
                  textColor: Theme.of(context).brightness == Brightness.light
                      ? LightColors.textDark
                      : DarkColors.textDark,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppPaddings.medium),
          // Stats Component
          ProfileStatsComponent(
              user: user), // X Followers, X Following, X Posts
          const SizedBox(height: AppPaddings.medium),
          // Actions Component
          // UserProfileActionsComponent(user: user), // Send Message
          // Bio
          user.biograph != null
              ? Padding(
                  padding: const EdgeInsets.only(top: AppPaddings.medium),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(user.biograph!,
                        style: Theme.of(context).textTheme.labelLarge!),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
