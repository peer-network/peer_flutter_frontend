import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/contacts_provider.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/contacts_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    ContactsProvider contactsProvider = Provider.of<ContactsProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    if (contactsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => contactsProvider.fetchContacts(),
      );
    } else if (contactsProvider.error != null) {
      return ErrorComponent(error: contactsProvider.error!);
    } else {
      // TODO implement pagination
      // height to be the height of the screen minus the height of the app bar and the bottom nav bar
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.backgroundColor,
        child: ListView.builder(
          itemCount: contactsProvider.contacts.length,
          itemBuilder: (context, index) {
            return ContactsCardComponent(
                chat: contactsProvider.contacts[index]);
          },
        ),
      );
    }
  }
}
