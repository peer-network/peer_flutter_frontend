import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class SharePostContactBottomNavbar extends StatelessWidget {
  const SharePostContactBottomNavbar({
    super.key,
    required this.feed,
    required this.activeContacts,
  });

  final FeedModel feed;
  final Set<String> activeContacts;

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      CustomIconButton(
          icon: IconLibrary.forward,
          onPressed: () {
            // TODO: pass data -> SharePostRoute( feed )
            // übergebe active contacts
            Navigator.of(context).push(SharePostRoute(feed, activeContacts));
          }),
    ];
    return BaseBottomNavigationBar(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    ));
  }
}
