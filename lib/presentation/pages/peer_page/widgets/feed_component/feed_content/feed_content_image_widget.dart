import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';

class FeedContentImageWidget extends StatefulWidget {
  final ImagePost imagePost;
  const FeedContentImageWidget({super.key, required this.imagePost});

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
    print("ID of image post: ${widget.imagePost.id}");
    return SizedBox(
      height: MediaQuery.of(context).size.width, // Assuming square images
      child: PageView.builder(
        itemCount: widget.imagePost.media.length,
        controller: PageController(
            viewportFraction:
                1), // Adjust the viewportFraction for partially visible next image
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
              valueListenable: _reloadNotifier,
              builder: (context, value, child) {
                return Hero(
                    tag: 'post-${widget.imagePost.media[index]}',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          DetailedPostPageRoute(
                            widget.imagePost,
                          ),
                        );
                      },
                      child: Image.network(
                        widget.imagePost.media[index],
                        fit: BoxFit.fitWidth,
                        filterQuality: FilterQuality.medium,
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingProgress == null
                              ? child
                              : Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return GestureDetector(
                            onTap: () => _reloadNotifier.value++,
                            child: const Center(
                              child:
                                  Text('Failed to load image. Tap to retry.'),
                            ),
                          );
                        },
                      ),
                    ));
              });
        },
      ),
    );
  }
}
