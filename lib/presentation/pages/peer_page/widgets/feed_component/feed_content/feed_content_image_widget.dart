import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FeedContentImageWidget extends StatefulWidget {
  final List<String> imageUrls;
  const FeedContentImageWidget({super.key, required this.imageUrls});

  @override
  State<FeedContentImageWidget> createState() => _FeedContentImageWidgetState();
}

class _FeedContentImageWidgetState extends State<FeedContentImageWidget> {
  final ValueNotifier<int> _reloadNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _reloadNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width, // Assuming square images
      child: PageView.builder(
        itemCount: widget.imageUrls.length,
        controller: PageController(
            viewportFraction:
                1), // Adjust the viewportFraction for partially visible next image
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
              valueListenable: _reloadNotifier,
              builder: (context, value, child) {
                return Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.medium,
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress == null
                        ? child
                        : Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return GestureDetector(
                      onTap: () => _reloadNotifier.value++,
                      child: Center(
                        child: Text('Failed to load image. Tap to retry.'),
                      ),
                    );
                  },
                );
              });
        },
      ),
    );
  }
}
