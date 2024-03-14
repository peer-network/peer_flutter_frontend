import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';

class ChatContactsSearchBar extends StatelessWidget {
  const ChatContactsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'neue Nachricht',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: CustomColors.primaryColor,
                ),
          ),
        ),
        const Expanded(
            child: SearchElementContainer(searchElement: SearchField())),
      ],
    );
  }
}
