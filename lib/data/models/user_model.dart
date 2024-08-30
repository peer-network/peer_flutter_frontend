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
    String?
        img, //TODO: this is usually called imgUrl this was changed to work with the api
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
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
