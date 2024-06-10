import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CommentMainContent extends StatelessWidget {
  const CommentMainContent({
    super.key,
    required this.comment,
  });

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        AvatarComponent(imageUrl: comment.creator.img),
        const SizedBox(width: AppPaddings.small),
        // Comment
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(comment.creator.username,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(comment.content,
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
        const SizedBox(width: AppPaddings.small),
        // Like button
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.medium,
          icon: IconLibrary.heart,
        ),
      ],
    );
  }
}
