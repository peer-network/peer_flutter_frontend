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
