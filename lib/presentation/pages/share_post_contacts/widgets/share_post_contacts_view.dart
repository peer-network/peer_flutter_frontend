// SharePostContactsView uses ChatContactsProvider to fetch chat contacts
// and then dislays a custom "SharePostContactCardComponent" for each chat contact.

import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/chat_contacts_provider.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class SharePostContactsView extends StatelessWidget {
  final Set<String> activeContacts;
  final Function(String) toggleContact;
  final String searchQuery;

  const SharePostContactsView({
    super.key,
    required this.activeContacts,
    required this.toggleContact,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    ChatContactsProvider chatContactsProvider =
        Provider.of<ChatContactsProvider>(context);

    // Add filtering logic here
    final filteredContacts = searchQuery.isEmpty
        ? chatContactsProvider.chatContacts
        : chatContactsProvider.chatContacts.where((contact) {
            // Assuming each contact has a `name` property to search against
            // Adjust the property name as per your data model
            return contact.contact.username
                .toLowerCase()
                .contains(searchQuery.toLowerCase());
          }).toList();

    if (chatContactsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => chatContactsProvider.fetchChatContacts(),
      );
    } else if (chatContactsProvider.error != null) {
      return ErrorComponent(error: chatContactsProvider.error!);
    } else {
      return ListView.builder(
        // itemCount: chatContactsProvider.chatContacts.length,
        itemCount: filteredContacts.length,
        itemBuilder: (context, index) {
          // final chatContact = chatContactsProvider.chatContacts[index];
          final chatContact = filteredContacts[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
            child: SharePostContactCardComponent(
              chatContact: chatContact,
              isSelected: activeContacts.contains(chatContact.id),
              onSelect: toggleContact,
              searchQuery: searchQuery,
            ),
          );
        },
      );
    }
  }
}
