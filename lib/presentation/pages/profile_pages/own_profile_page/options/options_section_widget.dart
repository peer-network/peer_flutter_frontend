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
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: AppPaddings.medium,
            bottom: AppPaddings.medium,
          ),
          child: content,
        ),
      ],
    );
  }
}
