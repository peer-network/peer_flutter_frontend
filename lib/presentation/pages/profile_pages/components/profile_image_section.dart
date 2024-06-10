import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({super.key, required this.imgUrl});

  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPaddings.medium),
      child: AspectRatio(
        aspectRatio: AppAspectRatios.profileImageAspectRatio,
        child: AvatarComponent(
          imageUrl: imgUrl,
        ),
      ),
    );
  }
}
