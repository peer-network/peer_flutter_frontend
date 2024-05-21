import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';

class DetailedImagePage extends StatelessWidget {
  final FeedModel post;

  const DetailedImagePage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(post.imageUrls[0]),
            const SizedBox(height: 16),
            // Text(
            //   'Description: ${post.description}',
            //   style: const TextStyle(fontSize: 16),
            // ),
            // Add more details here
          ],
        ),
      ),
    );
  }
}
