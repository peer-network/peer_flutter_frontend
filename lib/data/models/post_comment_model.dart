import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart'; // Assuming you have a Freezed UserModel

part 'feed_comment_model.freezed.dart';
part 'feed_comment_model.g.dart';

@freezed
class PostCommentModel with _$CommentModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostCommentModel({
    required String id,
    required String content,
    required int postId,
    required String userId,
    // required UserModel creator, // Seems like "creator" and "user" are the same. There is no creator in the api
    required DateTime createdAt,
    required UserModel? user,
    @Default([]) List<PostCommentModel> comments,
    bool? isLiked,
    int? likeCount,
  }) = _CommentModel;

  factory PostCommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
