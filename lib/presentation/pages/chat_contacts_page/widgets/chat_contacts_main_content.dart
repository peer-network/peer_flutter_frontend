import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';

class ChatContactsMainContent extends StatefulWidget {
  const ChatContactsMainContent({super.key});

  @override
  State<ChatContactsMainContent> createState() =>
      _ChatContactsMainContentState();
}

class _ChatContactsMainContentState extends State<ChatContactsMainContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            SearchElementContainer(
              searchElement: const SearchBubble(),
            ),
          ],
        ),
      ],
    );
  }
}
