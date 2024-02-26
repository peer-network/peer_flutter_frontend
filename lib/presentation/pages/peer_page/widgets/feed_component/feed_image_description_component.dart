import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedImageDescriptionComponent extends StatelessWidget {
  const FeedImageDescriptionComponent({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.left)),
    );
  }
}
