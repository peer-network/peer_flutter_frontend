import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/image_slider_indicator.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final double width;
  final double height;

  const ImageSlider({super.key, required this.imageUrls, required this.width, required this.height});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  int _currentPage = 0;
  late ValueNotifier<double> currentIndexNotifier;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    currentIndexNotifier = ValueNotifier<double>(_currentPage.toDouble());
  }

  @override
  void dispose() {
    _pageController.dispose();
    currentIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
                currentIndexNotifier.value = _currentPage.toDouble();
              });
            },
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: widget.imageUrls[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        SizedBox(height: AppDimensions.imageSliderBarHeightBigger),
        ImageSliderIndicator(
          currentIndex: currentIndexNotifier,
          imageCount: widget.imageUrls.length,
        ),
      ],
    );
  }
}
