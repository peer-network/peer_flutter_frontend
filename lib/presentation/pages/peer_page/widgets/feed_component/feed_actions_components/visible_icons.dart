import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:provider/provider.dart';

List<Widget> buildVisibleIcons(BuildContext context, PostModel post) {
  PostProvider postProvider = Provider.of<PostProvider>(context);
  return [
    CustomIconButton(
      onPressed: () async =>
          (post.isLiked) ? {} : await postProvider.likePost(post.id),
      sizeType: SizeType.small,
      icon: post.isLiked ? IconLibrary.heartFilled : IconLibrary.heart,
      color: post.isLiked
          ? Theme.of(context).iconTheme.color
          : Theme.of(context).primaryIconTheme.color,
    ),
    const SizedBox(width: AppPaddings.small),
    CustomIconButton(
      onPressed: () {},
      sizeType: SizeType.small,
      icon: IconLibrary.comment,
      color: Theme.of(context).primaryIconTheme.color,
    ),
    const SizedBox(width: AppPaddings.small),
    CustomIconButton(
      onPressed: () {
        Navigator.of(context).push(SharePostContactsRoute(post));
      },
      sizeType: SizeType.small,
      icon: IconLibrary.forward,
      color: Theme.of(context).primaryIconTheme.color,
    ),
  ];
}
