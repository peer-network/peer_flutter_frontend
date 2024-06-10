import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

class SinglePostImageContent extends StatelessWidget {
  const SinglePostImageContent({
    super.key,
    required this.post,
  });

  final ImagePost post;

  @override
  Widget build(BuildContext context) {
    // TODO: for later have all imageUrls shown in a side slider or carousel
    return AspectRatio(
      aspectRatio: post.aspectRatio.doubleValue(),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Hero(
            tag: 'post-${(post).media}', child: Image.network((post).media)),
      ),
    );
  }
}
