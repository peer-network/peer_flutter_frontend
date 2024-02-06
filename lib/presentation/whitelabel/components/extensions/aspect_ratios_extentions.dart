import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

extension AspectRatioValue on AspectRatios {
  double get value {
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
        throw ArgumentError('Invalid aspect ratio');
    }
  }
}
