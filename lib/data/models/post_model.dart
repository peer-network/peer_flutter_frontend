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
    required String id, // TODO rename to post_id
    @JsonKey(name: 'title') required String title, // title in json
    required String content,
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,

    required int gemsTotal, // block of fields for post performance extension of post model
    required int gemsToday,
    required int gemsAllTimeHigh,
    required int gemsLikes,
    required int gemsViews,
    required int gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
    required Map<DateTime, double> likesPerDay,

    @Default([]) List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    @JsonKey(name: 'user') UserModel? user, // user in json
  }) = TextPost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.image({
    required String id,
    @JsonKey(name: 'title') required String title, // title in json
    @JsonKey(name: 'mediaDescription') required String mediaDescription, // mediaDescription in json
    required String media,
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
    @JsonKey(name: 'user') UserModel? user, // user in json
    @ImageAspectRatioConverter()
    @Default(ImageAspectRatios.square)
    ImageAspectRatios aspectRatio,

    required List<String> imageUrls,
    String? postText,
    required int gemsTotal,
    required int gemsToday,
    required int gemsAllTimeHigh,
    required int gemsLikes,
    required int gemsViews,
    required int gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
    required Map<DateTime, double> likesPerDay,
  }) = ImagePost;

  @JsonSerializable(explicitToJson: true)
  const factory PostModel.video({
    required String id,
    @JsonKey(name: 'title') required String title,
    required String media,
    @JsonKey(name: 'mediaDescription') required String mediaDescription,
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
    @JsonKey(name: 'user') UserModel? user,

    String? postText,
    required int gemsTotal,
    required int gemsToday,
    required int gemsAllTimeHigh,
    required int gemsLikes,
    required int gemsViews,
    required int gemsShares,
    @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
    required Map<DateTime, double> likesPerDay,
  }) = VideoPost;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

Map<DateTime, double> _likesPerDayFromJson(Map<String, dynamic> json) =>
    json.map((key, value) => MapEntry(DateTime.parse(key), (value as num).toDouble()));

Map<String, double> _likesPerDayToJson(Map<DateTime, double> map) =>
    map.map((key, value) => MapEntry(key.toIso8601String(), value));

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
