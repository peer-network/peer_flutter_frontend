import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contacts_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostContactsPage extends StatelessWidget {
  const SharePostContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
        appBar: SecondaryAppbar(title: 'Beitrag Verschicken'),
        bottomNavigationBar: SharePostContactBottomNavbar(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(),
                SharePostContactsView(),
              ],
            ),
          ),
        ));
  }
}
