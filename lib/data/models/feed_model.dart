import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/data/models/user.dart';

class FeedModel {
  final String id;
  final String creatorId;
  UserModel creator;
  final String? imageDescription;
  final List<String> imageUrls;
  final String? contentText;
  final num likeCount;
  final num viewCount;
  final DateTime createdAt;
  List<FeedCommentModel> comments;
  bool isLiked;

  FeedModel({
    required this.id,
    required this.creatorId,
    required this.creator,
    required this.imageDescription,
    required this.imageUrls,
    required this.contentText,
    required this.likeCount,
    required this.viewCount,
    required this.createdAt,
    required this.comments,
    required this.isLiked,
  });

  toggleLike() {
    isLiked = !isLiked;
  }

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    // create comments object
    List<FeedCommentModel> comments = [];

    if (json['comments'] != null) {
      json['comments'].forEach((comment) {
        comments.add(FeedCommentModel.fromJson(comment));
      });
    }

    return FeedModel(
      id: json['id'],
      creatorId: json['creatorId'],
      creator: UserModel.fromJson(json['creator']),
      imageDescription: json['imageDescription'],
      imageUrls: json['imageUrls'] ?? [],
      contentText: json['contentText'],
      likeCount: json['likeCount'],
      viewCount: json['viewCount'],
      createdAt: DateTime.parse(json['createdAt']),
      comments: comments,
      isLiked: json['isLiked'],
    );
  }
}
