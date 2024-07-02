import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 28,//TODO use correct style
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                amount.toString(),
                style: Theme.of(context).textTheme.displayLarge!,
              ),
              const SizedBox(width: 8),//TODO use correct style
              ImageIcon(
                IconLibrary.diamond.icon,
                color: Theme.of(context).primaryIconTheme.color,
                size: 24, //TODO use correct style
              ),
            ],
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!,
        ),
      ],
    );
  }
}
