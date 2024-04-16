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

// class FeedModel {
//   final String id;
//   final DateTime createdAt;
//   final num likeCount;
//   final num viewCount;
//   // additional fields
//   String creatorId;
//   UserModel? creator;
//   final String? imageDescription;
//   final List<String> imageUrls;
//   final PostType postType;
//   List<FeedCommentModel> comments;
//   final String? contentText;
//   bool? isLiked;

//   FeedModel({
//     required this.id,
//     required this.creatorId,
//     this.creator,
//     required this.imageDescription,
//     this.imageUrls = const [],
//     required this.contentText,
//     required this.postType,
//     required this.likeCount,
//     required this.viewCount,
//     required this.createdAt,
//     this.comments = const [],
//     this.isLiked,
//   });

//   toggleLike() {
//     if (isLiked == null) {
//       isLiked = true;
//     } else {
//       isLiked = !isLiked!;
//     }
//   }

//   factory FeedModel.fromJson(Map<String, dynamic> json) {
//     // create comments object
//     List<FeedCommentModel> comments = [];

//     if (json['comments'] != null) {
//       json['comments'].forEach((comment) {
//         comments.add(FeedCommentModel.fromJson(comment));
//       });
//     }

//     // the posttype is determined by the presence of imageUrls or contentText
//     PostType postType = PostType.text;
//     if (json['image_urls'] != null) {
//       postType = PostType.image;
//     }

//     return FeedModel(
//       id: json['id'],
//       creatorId: json['creator_id'],
//       creator:
//           json['creator'] != null ? UserModel.fromJson(json['creator']) : null,
//       imageDescription: json['image_description'],
//       imageUrls: json['image_urls'] ?? [],
//       contentText: json['content_text'],
//       likeCount: json['like_count'],
//       viewCount: json['view_count'],
//       createdAt: DateTime.parse(json['created_at']),
//       comments: comments,
//       isLiked: json['is_liked'],
//       postType: postType,
//     );
//   }
// }
