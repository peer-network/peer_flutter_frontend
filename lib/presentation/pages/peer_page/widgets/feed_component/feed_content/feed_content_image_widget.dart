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
    return SizedBox(
      height: MediaQuery.of(context).size.width, // Assuming square images
      child: Hero(
        tag: 'post-${widget.imagePost.media}',
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                DetailedImagePageRoute(
                  widget.imagePost,
                  widget.imagePost.media,
                ),
              );
            },
            child: CachedNetworkImage(
              imageUrl: widget.imagePost.media,
            )),
      ),
    );
  }
}
