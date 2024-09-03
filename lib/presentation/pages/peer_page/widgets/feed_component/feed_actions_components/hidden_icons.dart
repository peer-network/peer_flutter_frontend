import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:provider/provider.dart';

Row buildHiddenIcons(BuildContext context, Key key, PostModel post) {
  PostProvider postProvider = Provider.of<PostProvider>(context);
  return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          onPressed: () async =>
              (post.isDisliked) ? {} : await postProvider.dislikePost(post.id),
          sizeType: SizeType.small,
          icon:
              post.isDisliked ? IconLibrary.dislikeActive : IconLibrary.dislike,
          color: (post.isDisliked)
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).primaryIconTheme.color,
        ),
        const SizedBox(width: AppPaddings.small),
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.report,
          color: Theme.of(context).primaryIconTheme.color,
        ),
        const SizedBox(width: AppPaddings.small),
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.bookmark,
          color: Theme.of(context).primaryIconTheme.color,
        ),
        const SizedBox(width: AppPaddings.small),
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.download,
          color: Theme.of(context).primaryIconTheme.color,
        )
      ]);
}
