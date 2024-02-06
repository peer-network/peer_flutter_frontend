import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  final bool iconLeft;
  final IconData icon;
  final String text;

  const IconRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
