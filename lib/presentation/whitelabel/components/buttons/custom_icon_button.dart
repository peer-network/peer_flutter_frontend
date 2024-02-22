import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.sizeType = SizeType.medium});

  final IconLibrary icon;
  final Function() onPressed;
  final SizeType sizeType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ImageIcon(
        icon.icon,
        size: sizeType.iconSize(context),
      ),
    );
  }
}
