import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/custom_cached_network_image.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppAspectRatios.profileImageAspectRatio,
      child: CustomCachedNetworkImage(imageUrl: imgUrl),
    );
  }
}
