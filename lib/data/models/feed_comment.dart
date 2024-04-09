import 'package:peer_app/data/models/user.dart';

// class FeedCommentModel {
//   final String id;
//   final String creatorId;
//   final UserModel creator;
//   final String contentText;
//   final DateTime createdAt;
//   final num likeCount;
//   final List<FeedCommentModel> comments;
//   bool isLiked;

//   FeedCommentModel({
//     required this.id,
//     required this.creatorId,
//     required this.creator,
//     required this.contentText,
//     required this.createdAt,
//     required this.likeCount,
//     required this.comments,
//     required this.isLiked,
//   });

//   toggleLike() {
//     isLiked = !isLiked;
//   }

//   factory FeedCommentModel.fromJson(Map<String, dynamic> json) {
//     // create comments object
//     List<FeedCommentModel> comments = [];

//     if (json['comments'] != null) {
//       json['comments'].forEach((comment) {
//         comments.add(FeedCommentModel.fromJson(comment));
//       });
//     }

//     return FeedCommentModel(
//       id: json['id'],
//       creatorId: json['creator_id'],
//       creator: UserModel.fromJson(json['creator']),
//       contentText: json['content_text'],
//       createdAt: DateTime.parse(json['created_at']),
//       likeCount: json['like_count'],
//       comments: comments,
//       isLiked: json['is_liked'],
//     );
//   }
// }

class CommentModel {
  final int id;
  final String content;
  final int postId;
  final int userId;
  final UserModel user;
  // TODO implement
  final List<CommentModel> comments = [];

  CommentModel({
    required this.id,
    required this.content,
    required this.postId,
    required this.userId,
    required this.user,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      content: json['content'],
      postId: json['postId'],
      userId: json['userId'],
      user: UserModel.fromJson(json['user']),
    );
  }
}
