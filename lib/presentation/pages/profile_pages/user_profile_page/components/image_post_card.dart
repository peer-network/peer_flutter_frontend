import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user_model.dart';

class ImagePostCard extends StatelessWidget {
  const ImagePostCard({super.key, required this.post, required this.user});

  final FeedModel post;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardSize =
        screenWidth / 3; // Image size as one-third of screen width

    return Container(
      alignment: Alignment.center,
      width: cardSize,
      height: cardSize, // Keeping the container square
      child: AspectRatio(
        aspectRatio: 1.0, // Enforcing a 1:1 aspect ratio
        child: Image.network(
          post.content.toString(), // Assuming this is your image URL
          fit: BoxFit.cover, // This will cover the area and crop excess parts
        ),
      ),
    );
  }
}
