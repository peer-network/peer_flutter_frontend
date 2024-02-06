import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class PrimaryBottomNavbarItem extends StatelessWidget {
  const PrimaryBottomNavbarItem(
      {super.key, required this.icon, required this.onPressed});

  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        child: icon,
      ),
    );
  }
}
