import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/peer_dropdown.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';

class SelectionBar extends StatefulWidget {
  const SelectionBar({super.key});

  @override
  State<SelectionBar> createState() => _SelectionBarState();
}

class _SelectionBarState extends State<SelectionBar> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SearchElementContainer(
          searchElement: SearchField(
            controller: searchQueryController,
          ),
        ),
        SearchElementContainer(
          searchElement: PeerDropdown(
            placeholderText: 'Alle Posts',
            items: [
              DropDownItemModel(value: 'Item 1', text: 'Item 1'),
              DropDownItemModel(value: 'Item 1', text: 'Item 1'),
            ],
            onChanged: (_) {},
          ),
        ),
        SearchElementContainer(
          searchElement: PeerDropdown(
            placeholderText: 'Neuste',
            items: [
              DropDownItemModel(value: 'bob 1', text: 'bob 1'),
            ],
            onChanged: (_) {},
          ),
        ),
      ],
    );
  }
}
