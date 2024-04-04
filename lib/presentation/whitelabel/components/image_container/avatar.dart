import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({super.key, required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return Container(
        width: AppDimensions.avatarSize,
        height: AppDimensions.avatarSize,
        decoration: const BoxDecoration(
          color: CustomColors.backgroundCardColor,
          shape: BoxShape.circle,
        ),
      );
    }
    return CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl!,
        imageBuilder: (context, imageProvider) => Container(
              width: AppDimensions.avatarSize,
              height: AppDimensions.avatarSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
        placeholder: (context, url) => Container(
              width: AppDimensions.avatarSize,
              height: AppDimensions.avatarSize,
              decoration: const BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle,
              ),
            ),
        errorWidget: (context, url, error) {
          print("Error loading image: $error");
          return Container(
            width: AppDimensions.avatarSize,
            height: AppDimensions.avatarSize,
            decoration: const BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.error,
              color: Colors.red,
            ),
          );
        });
  }
}
