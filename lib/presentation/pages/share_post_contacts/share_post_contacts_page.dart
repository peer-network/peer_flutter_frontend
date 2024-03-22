import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_notification_search_bar.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostContactsPage extends StatelessWidget {
  const SharePostContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
        appBar: SecondaryAppbar(title: 'Beitrag Verschicken'),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ChatContactsSearchBar(),
                SearchField(),
                ChatContactsView(),
              ],
            ),
          ),
        ));
  }
}
