import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactsSearchBar extends StatelessWidget {
  const ChatContactsSearchBar({super.key});

  // TODO implement search query controller
  // therefore maybe make this a stateful widget
  // implement search query controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'neue Nachricht',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: CustomColors.primaryColor,
                  ),
            ),
          ),
          // TODO: Reimplement
          // const Expanded(
          //     child: SearchElementContainer(searchElement: SearchField())),
        ],
      ),
    );
  }
}
