import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
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
          height: AppDimensions.labelRowLarge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                amount.toString(),
                style: Theme.of(context).textTheme.displayLarge!,
              ),
              const SizedBox(width: AppPaddings.small),
              ImageIcon(
                IconLibrary.diamond.icon,
                color: Theme.of(context).primaryIconTheme.color,
                size: AppDimensions.iconSizeMedium,
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
