import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_message_model.dart'; // Adjust path as necessary
import 'user_model.dart'; // Adjust path as necessary

part 'chat_contact_model.freezed.dart';
part 'chat_contact_model.g.dart';

@freezed
class ChatContactModel with _$ChatContactModel {
  @JsonSerializable(explicitToJson: true)
  const factory ChatContactModel({
    required String id,
    required UserModel contact,
    ChatMessageModel? lastChatMessage,
    int? notificationCount,
  }) = _ChatContactModel;

  factory ChatContactModel.fromJson(Map<String, dynamic> json) =>
      _$ChatContactModelFromJson(json);
}
