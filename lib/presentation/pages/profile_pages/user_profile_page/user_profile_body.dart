import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_image_post_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_image_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/profile_info_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/profile_text_post_section.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileImageSection(imgUrl: user.img),
          const SizedBox(height: AppPaddings.large),
          ProfileInfoSection(user: user),
          const SizedBox(height: AppPaddings.large),
          ProfileImagePostSection(
            posts: user.posts!.whereType<ImagePost>().toList(),
          ),
          const SizedBox(height: AppPaddings.large),
          ProfileTextPostSection(
            posts: user.posts!.whereType<TextPost>().toList(),
            user: user,
          ),
          // TODO: Add ProfileVideoPostSection
        ],
      ),
    );
  }
}
