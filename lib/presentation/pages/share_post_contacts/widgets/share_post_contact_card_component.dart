// SharePostContactCardComponent displays a single card for a "chat contact"/"share post contact".
// It is used in SharePostContactsView to display a list of chat contacts.
// It piggybacks on the ChatContactModel and ChatContactProvider from the chat contacts feature.

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostContactCardComponent extends StatelessWidget {
  final ChatContactModel chatContact;
  final bool isSelected;
  final Function(String) onSelect;
  final String searchQuery;

  const SharePostContactCardComponent({
    super.key,
    required this.chatContact,
    required this.isSelected,
    required this.onSelect,
    this.searchQuery = '',
  });

  TextSpan _highlightSearchResult(
      String text, String searchQuery, BuildContext context) {
    final TextStyle highlightStyle = Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(
          // TODO: Make the matching text black and the other text grey (THIS IS JUST A PLACEHOLDER)
          backgroundColor: LightColors.iconBtc, // Highlight color for search
          color: Theme.of(context).brightness == Brightness.light
              ? LightColors.textPrimary
              : DarkColors.textPrimary,
        );

    final TextStyle normalStyle = Theme.of(context).textTheme.titleLarge!;

    if (searchQuery.isEmpty) {
      return TextSpan(text: text, style: normalStyle);
    }

    final query = searchQuery.toLowerCase();
    final List<TextSpan> spans = [];
    int start = 0, index;

    while ((index = text.toLowerCase().indexOf(query, start)) != -1) {
      if (index > start) {
        spans.add(
            TextSpan(text: text.substring(start, index), style: normalStyle));
      }
      spans.add(TextSpan(
          text: text.substring(index, index + query.length),
          style: highlightStyle));
      start = index + query.length;
    }
    spans.add(TextSpan(text: text.substring(start), style: normalStyle));

    return TextSpan(children: spans);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(chatContact.id),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.small),
        child: Container(
          color: Colors.transparent, // Ensures GestureDetector is effective
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AvatarComponent(imageUrl: chatContact.contact.imageUrl),
                  Expanded(
                    flex: 95,
                    child: Padding(
                      padding: const EdgeInsets.only(left: AppPaddings.small),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: _highlightSearchResult(
                              chatContact.contact.name!, searchQuery, context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 5),
                  if (isSelected)
                    Icon(Icons.check, color: Theme.of(context).primaryColor),
                ],
              ),
              const SizedBox(height: AppPaddings.small),
              // const Divider(height: 2, color: CustomColors.cardBorderColor),
              Divider(
                  height: 2,
                  color: Theme.of(context).brightness == Brightness.light
                      ? LightColors.divider
                      : DarkColors.divider),
            ],
          ),
        ),
      ),
    );
  }
}
