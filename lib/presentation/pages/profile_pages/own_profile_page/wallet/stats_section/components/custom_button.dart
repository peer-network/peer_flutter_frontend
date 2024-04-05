import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final Color color; //MaterialStateProperty.all(CustomColors.lightTextColor),
  final Color? textColor;
  final bool isIcon;
  final Icon? icon;
  final double? width;
  final double? height;

  const CustomButton(
      {Key? key,
      this.text,
      required this.onPressed,
      required this.color,
      this.textColor,
      required this.isIcon,
      this.icon,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            fixedSize: (height == null && width == null)
                ? null
                : MaterialStatePropertyAll<Size>(Size(width!, height!)),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        onPressed: onPressed,
        child: (isIcon)
            ? icon as Widget
            : Text(text!,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: textColor ?? CustomColors.tertiaryTextColor)));
  }
}
