import 'package:flutter/material.dart';
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
    return SizedBox(
      width: 100,
      child: DropdownButton<String>(
        value: widget.placeholderText,
        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.blueAccent,
        ),
        onChanged: widget.onChanged,
        items: widget.items.map<DropdownMenuItem<String>>((item) {
          return DropdownMenuItem<String>(
            value: item.value,
            child: Text(item.text),
          );
        }).toList(),
      ),
    );
  }
}

// Defines a model for dropdown items.
class DropDownItemModel {
  final String value;
  final String text;

  DropDownItemModel({required this.value, required this.text});
}
