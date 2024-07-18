// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'post_performance_model.freezed.dart';
// part 'post_performance_model.g.dart';

// @freezed
// class PostPerformanceModel with _$PostPerformanceModel {
//   @JsonSerializable(explicitToJson: true)
//   const factory PostPerformanceModel({
//     required dynamic postId,
//     required int userId,
//     required List<String> imageUrls,
//     String? postText,
//     DateTime? createdAt,
//     required int gemsTotal,
//     required int gemsToday,
//     required int gemsAllTimeHigh,
//     required int gemsLikes,
//     required int gemsViews,
//     required int gemsShares,
//     @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
//     required Map<DateTime, double> likesPerDay,
//   }) = _PostPerformanceModel;

//   factory PostPerformanceModel.fromJson(Map<String, dynamic> json) =>
//       _$PostPerformanceModelFromJson(json);
// }

// Map<DateTime, double> _likesPerDayFromJson(Map<String, dynamic> json) =>
//     json.map((key, value) => MapEntry(DateTime.parse(key), (value as num).toDouble()));

// Map<String, double> _likesPerDayToJson(Map<DateTime, double> map) =>
//     map.map((key, value) => MapEntry(key.toIso8601String(), value));
