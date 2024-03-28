// // SharePostContactCardComponent displays a single card for a "chat contact"/"share post contact".
// // It is used in SharePostContactsView to display a list of chat contacts.
// // It piggybacks on the ChatContactModel and ChatContactProvider from the chat contacts feature.

// import 'package:flutter/material.dart';
// import 'package:peer_app/data/models/chat_contact_model.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class SharePostContactCardComponent extends StatelessWidget {
//   final ChatContactModel chatContact;
//   final bool isSelected;
//   final Function(String) onSelect;
//   final String searchQuery;

//   const SharePostContactCardComponent({
//     super.key,
//     required this.chatContact,
//     required this.isSelected,
//     required this.onSelect,
//     this.searchQuery = '',
//   });

//   TextSpan _highlightSearchResult(String text, String searchQuery) {
//     if (searchQuery.isEmpty) {
//       return TextSpan(text: text);
//     }
//     final query = searchQuery.toLowerCase();
//     final startIndex = text.toLowerCase().indexOf(query);
//     if (startIndex == -1) {
//       return TextSpan(text: text); // No match found
//     }
//     final endIndex = startIndex + query.length;

//     return TextSpan(children: [
//       TextSpan(text: text.substring(0, startIndex)), // Before match
//       TextSpan(
//         text: text.substring(startIndex, endIndex),
//         style: const TextStyle(
//           backgroundColor: Colors.yellow, // Highlight style
//           color: Colors.black,
//         ),
//       ),
//       TextSpan(text: text.substring(endIndex)), // After match
//     ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => onSelect(chatContact.id),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: AppPaddings.small, vertical: AppPaddings.small),
//         child: Container(
//           color: Colors
//               .transparent, // This ensures the GestureDetector is effective across the entire area
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   AvatarComponent(
//                       imageUrl: chatContact.contact.profileImageUrl),
//                   Expanded(
//                     flex: 95,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: AppPaddings.small),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: searchQuery != ''
//                             ? RichText(
//                                 text: _highlightSearchResult(
//                                     chatContact.contact.username, searchQuery),
//                                 // style: Theme.of(context).textTheme.titleLarge,
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis)
//                             : Text(
//                                 chatContact.contact.username,
//                                 style: Theme.of(context).textTheme.titleLarge,
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                       ),
//                     ),
//                   ),
//                   const Spacer(flex: 5),
//                   if (isSelected)
//                     Icon(Icons.check, color: Theme.of(context).primaryColor),
//                 ],
//               ),
//               const SizedBox(height: AppPaddings.small),
//               const Divider(
//                 height: 2,
//                 color: CustomColors.cardBorderColor,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
          backgroundColor: CustomColors.searchHighlightColor, // Highlight style
          color: CustomColors.primaryTextColor,
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
                  AvatarComponent(
                      imageUrl: chatContact.contact.profileImageUrl),
                  Expanded(
                    flex: 95,
                    child: Padding(
                      padding: const EdgeInsets.only(left: AppPaddings.small),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: _highlightSearchResult(
                              chatContact.contact.username,
                              searchQuery,
                              context),
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
              const Divider(height: 2, color: CustomColors.cardBorderColor),
            ],
          ),
        ),
      ),
    );
  }
}
