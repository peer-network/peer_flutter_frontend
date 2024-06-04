import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_message_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    required String id,
    required String name,
    required List<ChatMessageModel> messages,
    String? image,
    int? amountUnseenMessages,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
