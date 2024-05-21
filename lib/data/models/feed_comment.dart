// import 'package:peer_app/data/models/user_model.dart';

// class CommentModel {
//   final int id;
//   final String content;
//   final int postId;
//   final int userId;
//   final num likeCount;
//   final DateTime createdAt;
//   final UserModel user;
//   // TODO implement
//   final List<CommentModel> comments = [];

//   CommentModel({
//     required this.id,
//     required this.content,
//     required this.postId,
//     required this.userId,
//     required this.likeCount,
//     required this.createdAt,
//     required this.user,
//   });

//   factory CommentModel.fromJson(Map<String, dynamic> json) {
//     return CommentModel(
//       id: json['id'],
//       content: json['content'],
//       postId: json['postId'],
//       userId: json['userId'],
//       likeCount: json['likeCount'],
//       createdAt: DateTime.parse(json['createdAt']),
//       user: UserModel.fromJson(json['user']),
//     );
//   }
// }

import 'package:peer_app/data/models/user_model.dart';

class CommentModel {
  final int id;
  final String content;
  final int postId;
  final int userId;
  final num likeCount;
  final DateTime createdAt;
  final UserModel user;
  final List<CommentModel> comments; // List of replies to the comment

  CommentModel({
    required this.id,
    required this.content,
    required this.postId,
    required this.userId,
    required this.likeCount,
    required this.createdAt,
    required this.user,
    this.comments = const [], // Initialize comments list
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    var commentsList =
        json['comments'] as List?; // Parse nested comments from JSON
    List<CommentModel> comments = commentsList
            ?.map((i) => CommentModel.fromJson(i as Map<String, dynamic>))
            .toList() ??
        [];

    return CommentModel(
      id: json['id'],
      content: json['content'],
      postId: json['postId'],
      userId: json['userId'],
      likeCount: json['likeCount'],
      createdAt: DateTime.parse(json['createdAt']),
      user: UserModel.fromJson(json['user']),
      comments: comments, // Assign parsed nested comments
    );
  }
}
