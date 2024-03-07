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
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () {},
      ),
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.plusBox.icon,
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () {},
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
          size: AppDimensions.iconSizeLarge,
        ),
        onPressed: () {},
      ),
      PrimaryBottomNavbarItem(
        icon: ImageIcon(
          IconLibrary.search.icon,
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
