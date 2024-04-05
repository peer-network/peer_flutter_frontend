import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/contacts_provider.dart';
import 'package:peer_app/data/models/contact_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class ShareToListedContactsView extends StatelessWidget {
  final Set<String> activeContacts;

  const ShareToListedContactsView({super.key, required this.activeContacts});

  @override
  Widget build(BuildContext context) {
    ContactsProvider contactsProvider = Provider.of<ContactsProvider>(context);

    if (contactsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => contactsProvider.fetchContacts(),
      );
    } else if (contactsProvider.error != null) {
      return ErrorComponent(error: contactsProvider.error!);
    } else {
      List<ContactModel> filteredContacts = contactsProvider.contacts
          .where((contact) => activeContacts.contains(contact.id))
          .toList();

      String displayText;
      if (filteredContacts.isEmpty) {
        displayText = "No contacts selected";
      } else if (filteredContacts.length == 1) {
        displayText = "Forward to: ${filteredContacts.first.contact.username}";
      } else if (filteredContacts.length == 2) {
        displayText =
            "Forward to: ${filteredContacts[0].contact.username}, ${filteredContacts[1].contact.username}";
      } else {
        int additionalContacts = filteredContacts.length - 2;
        displayText =
            "Forward to: ${filteredContacts[0].contact.username}, ${filteredContacts[1].contact.username}, +$additionalContacts";
      }

      return Padding(
        padding: const EdgeInsets.all(AppPaddings.medium),
        child: Wrap(
          children: [
            Text(
              displayText,
              style:
                  TextStyle(fontSize: 16, color: CustomColors.primaryTextColor),
            ),
          ],
        ),
      );
    }
  }
}
