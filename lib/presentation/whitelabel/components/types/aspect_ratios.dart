enum AspectRatios {
  ar_21_9,
  ar_1_1,
  ar_9_16,
  ar_19_9,
}

// extension
extension AspectRatiosExtension on AspectRatios {
  double doubleValue() {
    switch (this) {
      case AspectRatios.ar_21_9:
        return 21 / 9;
      case AspectRatios.ar_1_1:
        return 1 / 1;
      case AspectRatios.ar_9_16:
        return 9 / 16;
      case AspectRatios.ar_19_9:
        return 19 / 9;
      default:
        return 16 / 9;
    }
  }
}

enum ImageAspectRatios {
  portrait,
  landscape,
  square,
}

extension ImageAspectRatiosExtension on ImageAspectRatios {
  double doubleValue() {
    switch (this) {
      case ImageAspectRatios.portrait:
        return 16 / 9;
      case ImageAspectRatios.landscape:
        return 9 / 16;
      case ImageAspectRatios.square:
        return 1 / 1;
      default:
        return 1 / 1;
    }
  }
}

// get the name of image aspect ratio
String getImageAspectRatioName(ImageAspectRatios aspectRatio) {
  switch (aspectRatio) {
    case ImageAspectRatios.portrait:
      return "Portrait";
    case ImageAspectRatios.landscape:
      return "Landscape";
    case ImageAspectRatios.square:
      return "Square";
    default:
      return "Portrait";
  }
}

// Eine funktion die von einem String (z.B. "Portrait", Square", "Landscape") zu einem ImageAspectRatio  Typ umwandelt
// Convert string to ImageAspectRatios
ImageAspectRatios imageAspectRatioFromString(String ratio) {
  switch (ratio.toLowerCase()) {
    case 'portrait':
      return ImageAspectRatios.portrait;
    case 'landscape':
      return ImageAspectRatios.landscape;
    case 'square':
      return ImageAspectRatios.square;
    default:
      throw ArgumentError('Invalid image aspect ratio string');
  }
}
