import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/post_model.dart'; // Assuming FeedModel is also converted to a Freezed model

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? imageUrl,
    String? name,
    String? email,
    bool? verified,
    String? createdAt,
    String? updatedAt,
    String? verificationToken,
    String? bio,
    int? amountOfPosts,
    int? amountOfFollowers,
    @Default([]) List<PostModel> posts,
    @Default(false) bool isFollowing,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
