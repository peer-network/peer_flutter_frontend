import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.sizeType = SizeType.medium,
      this.color});

  final IconLibrary icon;
  final Function() onPressed;
  final SizeType sizeType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Image(
        image: icon.icon,
        width: sizeType.iconSize(context),
        height: sizeType.iconSize(context),
        color: color ?? Theme.of(context).iconTheme.color,
      ),
    );
  }
}
