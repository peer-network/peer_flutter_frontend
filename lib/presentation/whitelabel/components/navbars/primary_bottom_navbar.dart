import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar_item.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class PrimaryBottomNavbar extends StatelessWidget {
  const PrimaryBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.profile.icon,
          color: Theme.of(context).primaryIconTheme.color,
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () => Navigator.of(context).push(OwnProfilePageRoute()),
      ),
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.plusBox.icon,
          color: Theme.of(context).primaryIconTheme.color,
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () {
          Navigator.of(context).push(CreatePostPageRoute());
        },
      ),
      PrimaryBottomNavbarItem(
        icon: Image.asset(
          IconLibrary.peer.icon.assetName,
          width: AppDimensions.iconSizeExtreLarge,
          height: AppDimensions.iconSizeExtreLarge,
        ),
        onPressed: () => Navigator.of(context).push(PeerPageRoute()),
      ),
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.shop.icon,
          color: Theme.of(context).primaryIconTheme.color,
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () => Navigator.of(context)
            // .push(UserProfilePageRoute('c05a6e6e-5365-40ca-b2d5-29af9f1cb1c6')),
            // .push(UserProfilePageRoute('user1'))
            .push(UserProfilePageRoute('a48b59b2-fa1d-4c68-8816-85f748d81315')),
      ),
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.search.icon,
          color: Theme.of(context).primaryIconTheme.color,
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () {},
      ),
    ];
    return BaseBottomNavigationBar(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    ));
  }
}
