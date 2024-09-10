import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class OptionsSectionWidget extends StatelessWidget {
  final String title;
  final Widget content;

  const OptionsSectionWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override  
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Ensures alignment to the left
      children: [
        Align(
          //alignment: Alignment.centerLeft, // Aligns the title to the leftmost point
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppPaddings.medium,
            bottom: AppPaddings.medium,
          ),
          child: content,
        ),
      ],
    );
  }
}
