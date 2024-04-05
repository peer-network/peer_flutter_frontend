import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/contacts_provider.dart';
import 'package:peer_app/data/models/contact_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class ShareToListedContactsView extends StatefulWidget {
  final Set<String> activeContacts;

  const ShareToListedContactsView({Key? key, required this.activeContacts})
      : super(key: key);

  @override
  _ShareToListedContactsViewState createState() =>
      _ShareToListedContactsViewState();
}

class _ShareToListedContactsViewState extends State<ShareToListedContactsView> {
  bool _showAllContacts = false;

  @override
  Widget build(BuildContext context) {
    ContactsProvider contactsProvider = Provider.of<ContactsProvider>(context);

    if (contactsProvider.isLoading) {
      return LoadingComponent(
          onRefresh: () => contactsProvider.fetchContacts());
    } else if (contactsProvider.error != null) {
      return ErrorComponent(error: contactsProvider.error!);
    } else {
      List<ContactModel> filteredContacts = contactsProvider.contacts
          .where((contact) => widget.activeContacts.contains(contact.id))
          .toList();

      List<Widget> contactWidgets = [];
      String displayText;

      if (filteredContacts.isEmpty) {
        displayText = "No contacts selected";
        contactWidgets.add(Text(displayText,
            style:
                TextStyle(fontSize: 16, color: CustomColors.primaryTextColor)));
      } else {
        for (int i = 0; i < filteredContacts.length; i++) {
          if (i < 2 || _showAllContacts) {
            contactWidgets.add(Text(filteredContacts[i].contact.username,
                style: TextStyle(
                    fontSize: 16, color: CustomColors.primaryTextColor)));
            if (i < filteredContacts.length - 1) {
              contactWidgets.add(Text(", ",
                  style: TextStyle(
                      fontSize: 16, color: CustomColors.primaryTextColor)));
            }
          }
        }

        if (filteredContacts.length > 2 && !_showAllContacts) {
          int additionalContacts = filteredContacts.length - 2;
          contactWidgets.add(GestureDetector(
            onTap: () => setState(() => _showAllContacts = true),
            child: Text(
              "+$additionalContacts",
              style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.primaryTextColor,
                  decoration: TextDecoration.underline),
            ),
          ));
        }
      }

      return Padding(
        padding: const EdgeInsets.all(AppPaddings.medium),
        child: Wrap(
          children: contactWidgets,
        ),
      );
    }
  }
}
