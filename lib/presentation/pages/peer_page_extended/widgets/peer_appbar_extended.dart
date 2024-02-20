import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/logo_appbar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class PeerAppbarExtended extends StatefulWidget implements PreferredSizeWidget {
  const PeerAppbarExtended({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  State<PeerAppbarExtended> createState() => _PeerAppbarExtendedState();
}

class _PeerAppbarExtendedState extends State<PeerAppbarExtended> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoAppbar(
          actions: [
            IconButton(
              icon: ImageIcon(
                IconLibrary.message.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {
                Navigator.of(context).push(ChatContactsPageRoute());
              },
            ),
            IconButton(
              icon: ImageIcon(
                IconLibrary.notifications.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
