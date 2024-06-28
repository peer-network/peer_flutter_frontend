import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final Widget content;

  const SectionWidget({
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
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? LightColors.textBright
                    : DarkColors.textPrimary,
              ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 16.0,
            bottom: MediaQuery.of(context).size.width * 0.08,
          ),
          child: content,
        ),
      ],
    );
  }
}
