import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage(
      {super.key, this.imageUrl, this.width, this.height});

  final String? imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: CustomColors.backgroundCardColor,
        ),
      );
    }
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: CustomColors.backgroundCardColor,
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: CustomColors.backgroundCardColor,
        ),
        child: const Icon(
          Icons.error,
          color: CustomColors.errorTextColor,
          size: AppDimensions.iconSizeMedium,
        ),
      ),
    );
  }
}
