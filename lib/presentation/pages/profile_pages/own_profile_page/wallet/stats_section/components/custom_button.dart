import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final Color? textColor;
  final bool isIcon;
  final Icon? icon;
  final double? width;
  final double? height;
  final bool? hasImage;
  final String? assetPath;
  final bool? overrideDefaultColor;
  final Color? customBackgroundColor;

  const CustomButton(
      {Key? key,
      this.text,
      required this.onPressed,
      this.textColor,
      required this.isIcon,
      this.icon,
      this.width,
      this.height,
      this.hasImage,
      this.assetPath,
      this.overrideDefaultColor,
      this.customBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            side: WidgetStateProperty.all(BorderSide(
                color: Theme.of(context).buttonTheme.colorScheme!.outline)),
            fixedSize: (height == null && width == null)
                ? null
                : WidgetStatePropertyAll<Size>(Size(width!, height!)),
            backgroundColor: overrideDefaultColor ?? false
                ? WidgetStatePropertyAll<Color>(customBackgroundColor!)
                : WidgetStatePropertyAll<Color>(
                    Theme.of(context).buttonTheme.colorScheme!.surface),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        onPressed: onPressed,
        child: (isIcon)
            ? icon as Widget
            : (hasImage ?? false)
                ? Image(
                    width: AppDimensions.avatarSize +
                        MediaQuery.of(context).size.width * 0.15,
                    height: AppDimensions.avatarSize +
                        MediaQuery.of(context).size.height * 0.15,
                    image: AssetImage(
                      assetPath!,
                    ))
                : Text(text!, style: Theme.of(context).textTheme.bodyLarge));
  }
}
