import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart'; // Assuming you have a Freezed UserModel

part 'post_comment_model.freezed.dart';
part 'post_comment_model.g.dart';

@freezed
class PostCommentModel with _$PostCommentModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostCommentModel({
    required String id,
    required String content,
    required int postId,
    required DateTime createdAt,
    required UserModel user,
    List<PostCommentModel>? subComments,
    bool? isLiked,
    int? likeCount,
  }) = _PostCommentModel;

  factory PostCommentModel.fromJson(Map<String, dynamic> json) =>
      _$PostCommentModelFromJson(json);
}
