import 'package:peer_app/data/models/user.dart';

class FeedCommentModel {
  final String id;
  final String creatorId;
  final UserModel creator;
  final String contentText;
  final DateTime createdAt;
  final num likeCount;
  final List<FeedCommentModel> comments;
  bool isLiked;

  FeedCommentModel({
    required this.id,
    required this.creatorId,
    required this.creator,
    required this.contentText,
    required this.createdAt,
    required this.likeCount,
    required this.comments,
    required this.isLiked,
  });

  toggleLike() {
    isLiked = !isLiked;
  }

  factory FeedCommentModel.fromJson(Map<String, dynamic> json) {
    // create comments object
    List<FeedCommentModel> comments = [];

    if (json['comments'] != null) {
      json['comments'].forEach((comment) {
        comments.add(FeedCommentModel.fromJson(comment));
      });
    }

    return FeedCommentModel(
      id: json['id'],
      creatorId: json['creator_id'],
      creator: UserModel.fromJson(json['creator']),
      contentText: json['content_text'],
      createdAt: DateTime.parse(json['created_at']),
      likeCount: json['like_count'],
      comments: comments,
      isLiked: json['is_liked'],
    );
  }
}
