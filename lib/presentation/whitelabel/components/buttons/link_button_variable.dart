import 'package:flutter/material.dart';

class LinkButtonVariableComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final bool underline;

  const LinkButtonVariableComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.underline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDecoration =
        underline ? TextDecoration.underline : TextDecoration.none;

    return InkWell(
      onTap: onPressed,
      child: Text(text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                decoration: textDecoration,
                decorationColor: textColor ?? Theme.of(context).primaryColor,
                color: textColor ?? Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
    );
  }
}
