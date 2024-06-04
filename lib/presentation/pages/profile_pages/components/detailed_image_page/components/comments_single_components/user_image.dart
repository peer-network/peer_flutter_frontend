import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key, required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: AppPaddings.tiny,
          top: AppPaddings.tiny,
          bottom: AppPaddings.tiny,
          right: AppPaddings.small),
      alignment: Alignment.topCenter,
      child: CircleAvatar(
        backgroundImage:
            imageUrl != null ? NetworkImage(imageUrl!) : null, // 2: Null Safety
        radius: AppDimensions.iconSizeSmall,
        child: imageUrl == null
            ? const Icon(Icons.person)
            : null, // 3: Placeholder Icon
      ),
    );
  }
}
