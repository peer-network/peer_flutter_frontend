import 'package:peer_app/core/types/post_types.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/data/models/user_model.dart';

class FeedModel {
  final int id;
  final bool active;
  final String title;
  final String content;
  final String? imageDescription;
  final UserModel user;
  final int catId;
  final List<CommentModel> comments;
  final int amountClicks;
  final int amountComments;
  // TODO remove hardcode
  final List<String> imageUrls = [];
  final PostType postType = PostType.text;
  final DateTime createdAt = DateTime.now();
  final num likeCount;
  final num viewCount;

  FeedModel({
    required this.id,
    required this.active,
    required this.title,
    required this.content,
    required this.imageDescription,
    required this.user,
    required this.catId,
    required this.comments,
    required this.amountClicks,
    required this.amountComments,
    required this.likeCount,
    required this.viewCount,
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    var commentsList = json['comments'] as List?;
    List<CommentModel> comments = commentsList == null
        ? []
        : commentsList.map((i) => CommentModel.fromJson(i)).toList();

    return FeedModel(
      id: json['id'],
      active: json['active'],
      imageDescription: null,
      title: json['title'],
      content: json['content'],
      user: UserModel.fromJson(json['user']),
      catId: json['catId'],
      comments: comments,
      amountClicks: json['clicks_aggregate']?['aggregate']?['count'] ?? 0,
      amountComments: json['comments_aggregate']?['aggregate']?['count'] ?? 0,
      likeCount: json['likes_aggregate']?['aggregate']?['count'] ?? 0,
      viewCount: json['views_aggregate']?['aggregate']?['count'] ?? 0,
    );
  }
}
