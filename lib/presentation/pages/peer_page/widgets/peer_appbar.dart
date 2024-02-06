import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/logo_appbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class PeerAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PeerAppbar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return LogoAppbar(
      actions: [
        IconButton(
          icon: ImageIcon(
            IconLibrary.message.icon,
            size: AppDimensions.iconSizeLarge,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: ImageIcon(
            IconLibrary.notifications.icon,
            size: AppDimensions.iconSizeLarge,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
