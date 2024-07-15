import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

List<Widget> buildVisibleIcons(BuildContext context, PostModel feed) {
  return [
    CustomIconButton(
      onPressed: () {},
      sizeType: SizeType.small,
      icon: IconLibrary.heart,
      color: Theme.of(context).primaryIconTheme.color,
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
        // DONE: hier auch ubergeben
        Navigator.of(context).push(SharePostContactsRoute(feed));
      },
      sizeType: SizeType.small,
      icon: IconLibrary.forward,
      color: Theme.of(context).primaryIconTheme.color,
    ),
  ];
}
