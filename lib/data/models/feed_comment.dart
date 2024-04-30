import 'package:peer_app/data/models/user_model.dart';

class CommentModel {
  final int id;
  final String content;
  final int postId;
  final int userId;
  final num likeCount;
  final DateTime createdAt;
  final UserModel user;
  // TODO implement
  final List<CommentModel> comments = [];

  CommentModel({
    required this.id,
    required this.content,
    required this.postId,
    required this.userId,
    required this.likeCount,
    required this.createdAt,
    required this.user,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      content: json['content'],
      postId: json['postId'],
      userId: json['userId'],
      likeCount: json['likeCount'],
      createdAt: DateTime.parse(json['createdAt']),
      user: UserModel.fromJson(json['user']),
    );
  }
}
