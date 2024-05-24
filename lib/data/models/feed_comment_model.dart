import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart'; // Assuming you have a Freezed UserModel

part 'feed_comment_model.freezed.dart';
part 'feed_comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  @JsonSerializable(explicitToJson: true)
  const factory CommentModel({
    required String id,
    required String content,
    required int postId,
    required int userId,
    required UserModel creator,
    required DateTime createdAt,
    @Default([]) List<CommentModel> comments,
    int? likeCount,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
