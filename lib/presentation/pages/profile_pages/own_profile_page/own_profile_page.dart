import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/peer_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/wallet_sheet.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_page.dart';

class OwnProfilePage extends StatelessWidget {
  const OwnProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
        appBar: PeerAppbar(),
        bottomNavigationBar: PrimaryBottomNavbar(),
        //child: WalletSheet());
        child: OptionsPage());
  }
}
