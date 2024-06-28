import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class PerformanceLabel extends StatelessWidget {
  const PerformanceLabel({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).brightness == Brightness.light
    ? LightColors.iconDarkPrimary
    : DarkColors.iconBrightPrimary;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(amount.toString()),
              const SizedBox(width: 8),
              ImageIcon(
                IconLibrary.diamond.icon,
                color: iconColor,
                size: 16,
              ),
            ],
          ),
        ),
        Text(title),
      ],
    );
  }
}