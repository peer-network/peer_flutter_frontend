import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page_extended/widgets/peer_appbar_extended_bottoms.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/logo_appbar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class PeerAppbarExtended extends StatefulWidget implements PreferredSizeWidget {
  const PeerAppbarExtended({super.key})
      : preferredSize =
            const Size.fromHeight(ExtendedToolbar.ToolbarExtendedHight);

  @override
  final Size preferredSize;

  @override
  State<PeerAppbarExtended> createState() => _PeerAppbarExtendedState();
}

class _PeerAppbarExtendedState extends State<PeerAppbarExtended> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoAppbar(
          actions: [
            IconButton(
              icon: ImageIcon(
                IconLibrary.message.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: ImageIcon(
                IconLibrary.notifications.icon,
                size: AppDimensions.iconSizeLarge,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchelementContainer(searchElement: const SearchBubble()),
                SearchelementContainer(
                    searchElement: PeerDropdown(
                  placeholderText: 'Alle Posts',
                  items: [
                    DropDownItemModel(value: 'Item 1', text: 'Item 1'),
                    DropDownItemModel(value: 'Item 1', text: 'Item 1'),
                  ],
                  onChanged: (_) {},
                )),
                SearchelementContainer(
                  searchElement: PeerDropdown(
                    placeholderText: 'Neuste',
                    items: [
                      DropDownItemModel(value: 'bob 1', text: 'bob 1'),
                    ],
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
