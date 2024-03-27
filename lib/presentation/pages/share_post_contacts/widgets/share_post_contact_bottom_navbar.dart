import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class SharePostContactBottomNavbar extends StatelessWidget {
  const SharePostContactBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      // BaseButton(text: 'Forward', onPressed: () {}),
      CustomIconButton(icon: IconLibrary.forward, onPressed: () {}),
    ];
    return BaseBottomNavigationBar(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    ));
  }
}
