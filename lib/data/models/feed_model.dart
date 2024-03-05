import 'package:peer_app/core/types/post_types.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/data/models/user.dart';

class FeedModel {
  final String id;
  final DateTime createdAt;
  final num likeCount;
  final num viewCount;
  // additional fields
  String creatorId;
  UserModel? creator;
  final String? imageDescription;
  final List<String> imageUrls;
  final PostType postType;
  List<FeedCommentModel> comments;
  final String? contentText;
  bool? isLiked;

  FeedModel({
    required this.id,
    required this.creatorId,
    this.creator,
    required this.imageDescription,
    this.imageUrls = const [],
    required this.contentText,
    required this.postType,
    required this.likeCount,
    required this.viewCount,
    required this.createdAt,
    this.comments = const [],
    this.isLiked,
  });

  toggleLike() {
    if (isLiked == null) {
      isLiked = true;
    } else {
      isLiked = !isLiked!;
    }
  }

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    // create comments object
    List<FeedCommentModel> comments = [];

    if (json['comments'] != null) {
      json['comments'].forEach((comment) {
        comments.add(FeedCommentModel.fromJson(comment));
      });
    }

    // the posttype is determined by the presence of imageUrls or contentText
    PostType postType = PostType.text;
    if (json['image_urls'] != null) {
      postType = PostType.image;
    }

    return FeedModel(
      id: json['id'],
      creatorId: json['creator_id'],
      creator:
          json['creator'] != null ? UserModel.fromJson(json['creator']) : null,
      imageDescription: json['image_description'],
      imageUrls: json['image_urls'] ?? [],
      contentText: json['content_text'],
      likeCount: json['like_count'],
      viewCount: json['view_count'],
      createdAt: DateTime.parse(json['created_at']),
      comments: comments,
      isLiked: json['is_liked'],
      postType: postType,
    );
  }
}
