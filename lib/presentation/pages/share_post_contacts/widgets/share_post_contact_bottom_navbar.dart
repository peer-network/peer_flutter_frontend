import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';

class SharePostContactBottomNavbar extends StatelessWidget {
  const SharePostContactBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      BaseButton(text: 'Forward', onPressed: () {}),
    ];
    return BaseBottomNavigationBar(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    ));
  }
}
