import 'package:flutter/material.dart';

class PrimaryBottomNavbarItem extends StatelessWidget {
  const PrimaryBottomNavbarItem(
      {super.key, required this.icon, required this.onPressed});

  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: icon,
    );
  }
}
