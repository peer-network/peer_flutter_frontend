import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart'; // This is for JSON serialization

@freezed
class PostModel with _$PostModel {
  @JsonSerializable(explicitToJson: true)
  const factory PostModel.text({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    DateTime? updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    required UserModel user,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsShares,
    int? gemsViews,
    @JsonKey(fromJson: likesPerDayFromJson, toJson: likesPerDayToJson)
    Map<DateTime, double>? likesPerDay,
  }) = TextPost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.image({
    required String id,
    required String title,
    required String mediaDescription,
    required List<String> media,
    required DateTime createdAt,
    DateTime? updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    required UserModel user,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    @ImageAspectRatioConverter()
    @Default(ImageAspectRatios.square)
    ImageAspectRatios aspectRatio,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsShares,
    int? gemsViews,
    @JsonKey(fromJson: likesPerDayFromJson, toJson: likesPerDayToJson)
    Map<DateTime, double>? likesPerDay,
  }) = ImagePost;

  //! this is not in use!!!
  @JsonSerializable(explicitToJson: true)
  const factory PostModel.video({
    String? id,
    String? title,
    String?
        media, //TODO; change datatype back to only String not List<String> when implementing video
    String? mediaDescription,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isLiked,
    bool? isViewed,
    bool? isReported,
    bool? isDisliked,
    bool? isSaved,
    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    UserModel? user,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsShares,
    int? gemsViews,
    @JsonKey(fromJson: likesPerDayFromJson, toJson: likesPerDayToJson)
    Map<DateTime, double>? likesPerDay,
  }) = VideoPost;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

Map<DateTime, double>? likesPerDayFromJson(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  }
  return json.map((key, value) => MapEntry(DateTime.parse(key), (value as num).toDouble()));
}

Map<String, double>? likesPerDayToJson(Map<DateTime, double>? map) {
  if (map == null) {
    return null;
  }
  return map.map((key, value) => MapEntry(key.toIso8601String(), value));
}

class ImageAspectRatioConverter implements JsonConverter<ImageAspectRatios, String> {
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
