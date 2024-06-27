import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start, // Align text and number to the start
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
                color: Colors.white,
                size: 16,
              ), // Diamond icon from IconLibrary
            ],
          ),
        ),
        Text(title),
      ],
    );
  }
}
