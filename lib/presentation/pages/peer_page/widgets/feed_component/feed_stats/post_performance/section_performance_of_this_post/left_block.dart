import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/image_slider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/text_box.dart';

class LeftBlock extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const LeftBlock({Key? key, required this.postPerformance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = (MediaQuery.of(context).size.width / 2) - 30;
    final double height = MediaQuery.of(context).size.width / 2 - 30;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          if (postPerformance.imageUrls.isEmpty && postPerformance.text != null)
            TextContentBox(
              text: postPerformance.text!,
              width: width,
              height: height,
            ),
          if (postPerformance.imageUrls.isNotEmpty)
            ImageSlider(imageUrls: postPerformance.imageUrls, width: width, height: height),
        ],
      ),
    );
  }
}



