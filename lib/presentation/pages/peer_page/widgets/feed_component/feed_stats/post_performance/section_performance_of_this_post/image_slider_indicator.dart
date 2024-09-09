import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';


class ImageSliderIndicator extends StatelessWidget {
  final int imageCount;
  final ValueNotifier<double> currentIndex;

  const ImageSliderIndicator({
    super.key,
    required this.currentIndex,
    required this.imageCount,
  });

  @override
  Widget build(BuildContext context) {
    double indicatorWidth = AppDimensions.imageSliderBarWidth / imageCount;

    return ValueListenableBuilder<double>(
      valueListenable: currentIndex,
      builder: (context, value, child) {
        double padding = indicatorWidth * value.toDouble();
        return SizedBox(
          height: AppDimensions.imageSliderBarHeight,
          width: AppDimensions.imageSliderBarWidth,
          child: Stack(
            children: [
              Container(
                width: AppDimensions.imageSliderBarWidth,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                    ? lightTheme.colorScheme.primaryContainer
                    : darkTheme.colorScheme.primaryContainer,
                  borderRadius: AppBorders.imageSliderRadius,
                ),
              ),
              AnimatedPadding(
                duration: AppDuration.imageSliderDuration,
                curve: Curves.easeInOut,
                padding: EdgeInsets.only(left: padding),
                child: Container(
                  width: indicatorWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                      ? lightTheme.colorScheme.secondary
                      : darkTheme.colorScheme.secondary,
                    borderRadius: AppBorders.imageSliderRadius,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
