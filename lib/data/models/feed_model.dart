import 'package:peer_app/core/types/post_types.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
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
  final List<String> imageUrls;
  final PostType postType;
  final DateTime createdAt;
  final num likeCount;
  final num viewCount;

  FeedModel({
    required this.id,
    required this.active,
    required this.title,
    required this.content,
    this.imageDescription,
    required this.user,
    required this.catId,
    required this.comments,
    required this.amountClicks,
    required this.amountComments,
    required this.imageUrls,
    required this.postType,
    required this.createdAt,
    required this.likeCount,
    required this.viewCount,
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    var commentsList = json['comments'] as List?;
    List<CommentModel> comments = commentsList
            ?.map((i) => CommentModel.fromJson(i as Map<String, dynamic>))
            .toList() ??
        [];

    UserModel user;
    try {
      user = UserModel.fromJson(json['user'] as Map<String, dynamic>);
    } catch (e) {
      print('Failed to parse UserModel from JSON: $e');
      throw const FormatException(
          'Failed to parse UserModel, invalid or null user data');
    }
    if (json['user'] == null) {
      throw const FormatException('User data is missing');
    }

    PostType postType;
    switch (json['postType']) {
      case 'image':
        postType = PostType.image;
        break;
      case 'video':
        postType = PostType.video;
        break;
      default:
        postType = PostType.text;
    }

    List<String> imageUrls =
        (json['imageUrls'] as List?)?.map((item) => item as String).toList() ??
            [];

    return FeedModel(
      id: json['id'] != null ? int.tryParse(json['id'].toString()) ?? 0 : 0,
      active: json['active'] ?? false,
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      imageDescription: json['image_description'],
      user: user,
      catId: json['catId'] != null
          ? int.tryParse(json['catId'].toString()) ?? 0
          : 0,
      comments: comments,
      amountClicks: int.tryParse(
              json['clicks_aggregate']?['aggregate']?['count']?.toString() ??
                  "0") ??
          0,
      amountComments: int.tryParse(
              json['comments_aggregate']?['aggregate']?['count']?.toString() ??
                  "0") ??
          0,
      likeCount: json['likes_aggregate']?['aggregate']?['count'] as num? ?? 0,
      viewCount: json['views_aggregate']?['aggregate']?['count'] as num? ?? 0,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt']!)
          : DateTime.now(),
      postType: postType,
      imageUrls: imageUrls,
    );
  }
}
