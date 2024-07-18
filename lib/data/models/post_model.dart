
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
    required UserModel user, // user in json
    required DateTime createdAt,
    DateTime? updatedAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    List<CommentModel>? comments,
    required int amountComments,
    required int amountLikes,
    required int amountViews,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsViews,
    int? gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
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
    List<CommentModel>? comments,
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
    int? gemsViews,
    int? gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
    Map<DateTime, double>? likesPerDay,
  }) = ImagePost;

  //! this is not in use!!!
  @JsonSerializable(explicitToJson: true)
  const factory PostModel.video({
    required String id,
    required String title,
    required String media,
    required String mediaDescription,
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    List<CommentModel>? comments,
    required int amountComments,
    required int amountLikes,
    required int amountViews,
    required UserModel user,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsViews,
    int? gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
    Map<DateTime, double>? likesPerDay,
  }) = VideoPost;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

Map<DateTime, double>? _likesPerDayFromJson(Map<String, dynamic> json) =>
    json.map((key, value) =>
        MapEntry(DateTime.parse(key), (value as num).toDouble()));

Map<String, double> _likesPerDayToJson(Map<DateTime, double>? map) =>
    map!.map((key, value) => MapEntry(key.toIso8601String(), value));

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
