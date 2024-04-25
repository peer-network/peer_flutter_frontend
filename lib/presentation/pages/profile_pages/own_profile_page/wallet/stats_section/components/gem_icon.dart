import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class GemIcon extends StatelessWidget {
  final String assetPath;
  const GemIcon({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle),
        child: Padding(
            padding: const EdgeInsets.all(AppPaddings.medium),
            child: Padding(
                padding: const EdgeInsets.only(top: AppPaddings.small),
                child: Image(
                    width: AppDimensions.avatarSize +
                        MediaQuery.of(context).size.width * 0.015,
                    height: AppDimensions.avatarSize +
                        MediaQuery.of(context).size.height * 0.015,
                    image: AssetImage(
                      assetPath,
                    )))));
  }
}
