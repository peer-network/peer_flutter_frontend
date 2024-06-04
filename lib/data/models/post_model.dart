import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart'; // This is for JSON serialization

// text = keine media felds nur content
// image = media feld mit (einem) bild, kein content
// video = (gibt's nicht) media feld, kein content

@freezed
class PostModel with _$PostModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostModel.text({
    required String id,
    required String caption, //title in json
    required String content,
    required UserModel creator, // user in json
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? likeCount,
    int? viewCount,
  }) = TextPost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.image({
    required String id,
    required String caption, // title in json
    required String description, // mediaDescription in json
    required UserModel creator, // user in jsons
    required List<CommentModel> comments,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<String> imageUrls,
    int? amountComments,
    int? likeCount,
    int? viewCount,
    // @Default('4x3') String aspectRatio,
    // @Default(AspectRatios.ar_1_1) AspectRatios aspectRatio,
    // @ImageAspectRatioConverter() required ImageAspectRatios aspectRatio,
    @ImageAspectRatioConverter() ImageAspectRatios? aspectRatio,
  }) = ImagePost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.video({
    required String id,
    required String videoUrl,
    required String caption,
    required String description,
    required UserModel creator,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? likeCount,
    int? viewCount,
  }) = VideoPost;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

// Custom converter for ImageAspectRatios
class ImageAspectRatioConverter
    implements JsonConverter<ImageAspectRatios, String> {
  const ImageAspectRatioConverter();

  @override
  ImageAspectRatios fromJson(String json) {
    return imageAspectRatioFromString(json);
  }

  @override
  String toJson(ImageAspectRatios object) {
    return getImageAspectRatioName(object);
  }
}
