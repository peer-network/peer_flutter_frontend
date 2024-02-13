import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/peer_page_extended/widgets/peer_appbar_extended.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';

class PeerPageExtended extends StatelessWidget {
  const PeerPageExtended({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: const PeerAppbarExtended(),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: Container());
  }
}
