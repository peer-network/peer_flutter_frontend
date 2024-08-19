import 'package:freezed_annotation/freezed_annotation.dart';
import 'post_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required String id,
    required String username,
    String? imgUrl,
    String? email,
    @Default(false) bool verified, // default to false if not provided
    String? createdAt,
    String? updatedAt,
    String? verificationToken,
    String? biograph,
    int? amountPosts, // corrected field name and default to 0
    int? amountFollowed, // corrected field name and default to 0
    int? amountFollower, // corrected field name and default to 0
    List<PostModel>? posts,
    bool? isFollowing, // corrected field name
    @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
    Map<DateTime, double>? tokensPerDay, // added field
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// Custom JSON serialization functions for tokensPerDay
Map<DateTime, double>? _tokensPerDayFromJson(Map<String, dynamic> json) =>
    json.map((key, value) =>
        MapEntry(DateTime.parse(key), (value as num).toDouble()));

Map<String, double> _tokensPerDayToJson(Map<DateTime, double>? map) =>
    map!.map((key, value) => MapEntry(key.toIso8601String(), value));
