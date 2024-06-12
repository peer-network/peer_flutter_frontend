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
    required String userId,
    // required UserModel creator, // Seems like "creator" and "user" are the same. There is no creator in the api
    required DateTime createdAt,
    required UserModel? user,
    @Default([]) List<CommentModel> comments,
    bool? isLiked,
    int? likeCount,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
