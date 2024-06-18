import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

Row buildHiddenIcons(BuildContext context, Key key) {
  return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.dislike,
          color: Theme.of(context).primaryIconTheme.color,
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
