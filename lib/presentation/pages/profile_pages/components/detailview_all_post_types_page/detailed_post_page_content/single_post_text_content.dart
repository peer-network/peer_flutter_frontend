import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SinglePostTextContent extends StatelessWidget {
  const SinglePostTextContent({super.key, required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'post-${post.id}',
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
          color: Theme.of(context).brightness == Brightness.light
              ? LightColors
                  .backgroundContainer // Denke die Farbe für den LightColors.backgroundContainer sollte angepasst werden
              : DarkColors.backgroundContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (post as TextPost).title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: AppPaddings.medium),
              Text(
                (post as TextPost).media,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: AppPaddings.medium),
            ],
          ),
        ));
  }
}
