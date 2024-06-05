import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/user_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart'; // This is for JSON serialization

@freezed
class PostModel with _$PostModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostModel.text({
    required String id,
    required String title, //title in json
    required String content,
    required UserModel user, // user in json
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
  }) = TextPost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.image({
    required String id,
    required String title, // title in json
    required String mediaDescription, // mediaDescription in json
    required String media,
    required UserModel user, // user in json
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
  }) = ImagePost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.video({
    required String id,
    required String title,
    required String media,
    required String mediaDescription,
    required UserModel user,
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
  }) = VideoPost;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
