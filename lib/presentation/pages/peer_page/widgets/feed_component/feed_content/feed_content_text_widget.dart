// FileName: feed_content_text_widget.dart

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedContentTextWidget extends StatelessWidget {
  const FeedContentTextWidget(
      {Key? key, required this.text, required this.caption})
      : super(key: key);

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
                  style: Theme.of(context).textTheme.headlineLarge)),
          const SizedBox(height: AppDimensions.textPostSpacing),
          Container(
            constraints: const BoxConstraints(
              maxHeight: AppDimensions.newsFeedTextHeight,
            ),
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ),
          const SizedBox(height: AppPaddings.medium),
          Divider(color: Theme.of(context).dividerColor),
        ],
      ),
    );
  }
}
