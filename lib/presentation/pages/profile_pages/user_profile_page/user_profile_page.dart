import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/peer_appbar.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/user_profile_body_wrapper_id.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: const PeerAppbar(),
        bottomNavigationBar: const PrimaryBottomNavbar(),
        child: UserProfileBodyWrapperID(userId: userId));
  }
}
