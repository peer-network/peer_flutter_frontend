import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart'; // This is for JSON serialization

@freezed
class PostModel with _$PostModel {
  const factory PostModel.text({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsViews,
    int? gemsShares,
    Map<DateTime, double>? likesPerDay,
    required List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    UserModel? user,
  }) = TextPost;

  const factory PostModel.image({
    required String id,
    required String title,
    required String mediaDescription,
    required List<String> media,
    required DateTime createdAt,
    required bool isLiked,
    required bool isViewed,
    required bool isReported,
    required bool isDisliked,
    required bool isSaved,
    required List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    UserModel? user,
    required ImageAspectRatios aspectRatio,
    required List<String> imageUrls,
    String? postText,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsViews,
    int? gemsShares,
    Map<DateTime, double>? likesPerDay,
  }) = ImagePost;

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
    required List<CommentModel> comments,
    int? amountComments,
    int? amountLikes,
    int? amountViews,
    UserModel? user,
    String? postText,
    int? gemsTotal,
    int? gemsToday,
    int? gemsAllTimeHigh,
    int? gemsLikes,
    int? gemsViews,
    int? gemsShares,
    Map<DateTime, double>? likesPerDay,
  }) = VideoPost;
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
