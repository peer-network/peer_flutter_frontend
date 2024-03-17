import 'package:flutter/material.dart';

enum ImageLibary {
  emptyImage,
}

extension ImageExtension on ImageLibary {
  AssetImage get image {
    switch (this) {
      case ImageLibary.emptyImage:
        return const AssetImage("assets/images/empty_image.png");

      default:
        throw Exception("Image not found");
    }
  }
}
