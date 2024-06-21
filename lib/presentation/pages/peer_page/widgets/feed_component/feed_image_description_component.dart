import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedImageDescriptionComponent extends StatelessWidget {
  const FeedImageDescriptionComponent(
      {super.key, required this.text, required this.caption});
  final String caption;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(caption,
                  style: Theme.of(context).textTheme.titleMedium)),
          const SizedBox(height: AppDimensions.imageDescriptionSpacing),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(text,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: AppValues.imageDescriptionMaxLines),
          ),
        ],
      ),
    );
  }
}
