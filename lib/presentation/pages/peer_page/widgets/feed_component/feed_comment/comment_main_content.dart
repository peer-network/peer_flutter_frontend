import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CommentMainContent extends StatelessWidget {
  const CommentMainContent({
    super.key,
    required this.comment,
  });

  final PostCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        AvatarComponent(imageUrl: comment.user.imgUrl),
        const SizedBox(width: AppPaddings.small),
        // Comment
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              comment.user != null
                  ? Text(comment.user.username,
                      style: Theme.of(context).textTheme.headlineMedium)
                  : Container(),
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
