import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/components/scroll_sheet.dart';

class WalletSheet extends StatelessWidget {
  const WalletSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tight(Size(
            double.infinity,
            MediaQuery.of(context).size.height -
                kBottomNavigationBarHeight -
                MediaQuery.of(context).size.height * 0.09)),
        child: WalletScrollSheet(
            dragHandleWidth: MediaQuery.of(context).size.width * 0.1));
  }
}
