import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/feed_comment.dart';

class DetailedImagePage extends StatelessWidget {
  final FeedModel post;

  const DetailedImagePage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(post.imageUrls[0]),
            const SizedBox(height: 16),
            Text(
              post.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildComments(post.comments),
          ],
        ),
      ),
    );
  }

  Widget _buildComments(List<CommentModel> comments) {
    return Column(
      children: comments.map((comment) => _buildCommentItem(comment)).toList(),
    );
  }

  Widget _buildCommentItem(CommentModel comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(comment.user.imageUrl ??
                    "FALLBACK VALUE"), // Assuming UserModel has a profilePictureUrl field
                radius: 16,
              ),
              const SizedBox(width: 8),
              Text(
                comment.user.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            comment.content,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                '${comment.createdAt}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(width: 8),
              Text(
                'Likes: ${comment.likeCount}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          if (comment.comments.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: _buildComments(comment.comments),
            ),
        ],
      ),
    );
  }
}
