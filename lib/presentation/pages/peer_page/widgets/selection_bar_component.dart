import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/testsz.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/peer_dropdown.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/search_element_container.dart';

class SelectionBar extends StatefulWidget {
  const SelectionBar({super.key});

  @override
  State<SelectionBar> createState() => _SelectionBarState();
}

class _SelectionBarState extends State<SelectionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: DropdownBar());
  }
}
