// SharePostContactCardComponent displays a single card for a "chat contact"/"share post contact".
// It is used in SharePostContactsView to display a list of chat contacts.
// It piggybacks on the ChatContactModel and ChatContactProvider from the chat contacts feature.

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostContactCardComponent extends StatefulWidget {
  final ChatContactModel chatContact;

  const SharePostContactCardComponent({
    super.key,
    required this.chatContact,
  });

  @override
  State<SharePostContactCardComponent> createState() =>
      _SharePostContactCardComponentState();
}

class _SharePostContactCardComponentState
    extends State<SharePostContactCardComponent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        // Optionally, do something else with the selection state, like notifying a parent widget or model
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.small),
        child: Container(
          color: Colors
              .transparent, // This ensures the GestureDetector is effective across the entire area
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AvatarComponent(
                      imageUrl: widget.chatContact.contact.profileImageUrl),
                  Expanded(
                    flex: 95,
                    child: Padding(
                      padding: const EdgeInsets.only(left: AppPaddings.small),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(widget.chatContact.contact.username,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  const Spacer(flex: 5),
                  if (isSelected)
                    Icon(Icons.check, color: Theme.of(context).primaryColor),
                ],
              ),
              const SizedBox(height: AppPaddings.small),
              const Divider(
                height: 2,
                color: CustomColors.cardBorderColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
