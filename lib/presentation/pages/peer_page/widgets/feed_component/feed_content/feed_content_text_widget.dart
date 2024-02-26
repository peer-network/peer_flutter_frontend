// FileName: feed_content_text_widget.dart

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedContentTextWidget extends StatelessWidget {
  const FeedContentTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: AppDimensions.newsFeedTextHeight,
            ),
            child: Scrollbar(
              thumbVisibility: true, // Use this for newer versions of Flutter
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPaddings.medium),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppPaddings.medium),
          const Divider(),
        ],
      ),
    );
  }
}
