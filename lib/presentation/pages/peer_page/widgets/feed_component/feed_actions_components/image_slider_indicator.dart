import 'package:flutter/material.dart';

class ImageSliderIndicator extends StatelessWidget {
  final int imageCount;
  final ValueNotifier<int> currentIndex;

  const ImageSliderIndicator({
    Key? key,
    required this.currentIndex,
    required this.imageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _barWidth = 75;
    double _indicatorWidth = _barWidth / imageCount;

    return ValueListenableBuilder<int>(
      valueListenable: currentIndex,
      builder: (context, value, child) {
        double padding = _indicatorWidth * value.toDouble();
        return Container(
          height: 4,
          width: _barWidth,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [
              Container(
                width: _barWidth,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: padding),
                child: Container(
                  width: _indicatorWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5),
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
