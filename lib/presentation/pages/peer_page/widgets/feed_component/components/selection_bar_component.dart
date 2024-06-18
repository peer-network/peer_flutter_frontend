import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/components/dropdown_bar.dart';

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
