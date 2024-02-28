import 'package:flutter/material.dart';

class FeedContentImageWidget extends StatelessWidget {
  final List<String> imageUrls;
  const FeedContentImageWidget({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width, // Assuming square images
      child: PageView.builder(
        itemCount: imageUrls.length,
        controller: PageController(
            viewportFraction:
                1), // Adjust the viewportFraction for partially visible next image
        itemBuilder: (context, index) {
          return Image.network(imageUrls[index], fit: BoxFit.fitWidth);
        },
      ),
    );
  }
}
