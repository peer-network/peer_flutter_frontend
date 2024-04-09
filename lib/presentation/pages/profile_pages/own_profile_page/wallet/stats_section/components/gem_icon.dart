import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class GemIcon extends StatelessWidget {
  final String assetPath;
  const GemIcon({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: CustomColors.backgroundCardColor, shape: BoxShape.circle),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
