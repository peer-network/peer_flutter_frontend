import 'package:freezed_annotation/freezed_annotation.dart';
import 'post_model.dart'; // Import the PostModel here

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required String id,
    required String username,
    String? img,
    @Default([]) List<PostModel> posts,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
