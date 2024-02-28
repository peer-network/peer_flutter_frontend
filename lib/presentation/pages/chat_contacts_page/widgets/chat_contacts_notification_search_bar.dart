import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';

class NotificationAndSearchBar extends StatefulWidget {
  const NotificationAndSearchBar({super.key});

  @override
  State<NotificationAndSearchBar> createState() =>
      _NotificationAndSearchState();
}

class _NotificationAndSearchState extends State<NotificationAndSearchBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Text('neue Nachricht',
              style: TextStyle(color: CustomColors.primaryColor)),
        ),
        Expanded(child: SearchElementContainer(searchElement: SearchBubble())),
      ],
    );
  }
}
