import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/input/base_input_decoration.dart';

class PeerDropdown extends StatefulWidget {
  const PeerDropdown(
      {super.key,
      required this.placeholderText,
      required this.items,
      required this.onChanged});

  final String placeholderText;
  final List<DropDownItemModel> items;
  final void Function(String?) onChanged;

  @override
  State<PeerDropdown> createState() => _PeerDropdownState();
}

class _PeerDropdownState extends State<PeerDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: BaseInputDecoration.get(hintText: widget.placeholderText),
      items: widget.items
          .map(
            (item) => DropdownMenuItem(
              value: item.value,
              child: Text(item.text),
            ),
          )
          .toList(),
      onChanged: widget.onChanged,
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        color: CustomColors.primaryIconColor,
      ),
      dropdownColor: Colors.blueGrey, // dropdownDecoration is not defined
    );
  }
}

// Defines a model for dropdown items.
class DropDownItemModel {
  final String value;
  final String text;

  DropDownItemModel({required this.value, required this.text});
}
