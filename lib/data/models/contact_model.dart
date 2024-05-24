import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart'; // Make sure UserModel is also properly set up for serialization

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String id,
    required UserModel contact,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}
