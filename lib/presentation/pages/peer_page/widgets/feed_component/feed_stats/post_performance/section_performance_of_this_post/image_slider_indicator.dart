import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';


class ImageSliderIndicator extends StatelessWidget {
  final int imageCount;
  final ValueNotifier<double> currentIndex;

  const ImageSliderIndicator({
    Key? key,
    required this.currentIndex,
    required this.imageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double indicatorWidth = AppDimensions.imageSliderBarWidth / imageCount;

    return ValueListenableBuilder<double>(
      valueListenable: currentIndex,
      builder: (context, value, child) {
        double padding = indicatorWidth * value.toDouble();
        return Container(
          height: AppDimensions.imageSliderBarHeight,
          width: AppDimensions.imageSliderBarWidth,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? LightColors.barSlider
                : DarkColors.barSlider,
            borderRadius: AppBorders.imageSliderRadius,
          ),
          child: Stack(
            children: [
              Container(
                width: AppDimensions.imageSliderBarWidth,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? LightColors.barSlider
                      : DarkColors.barSlider,
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
                        ? LightColors.barHandle
                        : DarkColors.barHandle,
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