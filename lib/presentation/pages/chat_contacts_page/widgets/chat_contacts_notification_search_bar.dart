import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactsSearchBar extends StatefulWidget {
  const ChatContactsSearchBar({super.key});

  @override
  State<ChatContactsSearchBar> createState() => _ChatContactsSearchBarState();
}

class _ChatContactsSearchBarState extends State<ChatContactsSearchBar> {
  TextEditingController searchQueryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchQueryController.addListener(() {
      setState(() {
        // This will trigger a rebuild with the updated search query.
      });
    });
  }

  @override
  void dispose() {
    searchQueryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
      child: Row(
        children: [
          Expanded(
            // child: PrimaryButton(text: "New Chat", onPressed: () {}),
            child: SecondaryButton(
              text: 'New Chat',
              onPressed: () {},
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? LightColors.buttonPrimary
                  : DarkColors.buttonPrimary,
              isFilled: true,
            ),
          ),
          // TODO: Reimplement
          Expanded(
              child: SearchElementContainer(
                  searchElement: SearchField(
            controller: searchQueryController,
          ))),
        ],
      ),
    );
  }
}
