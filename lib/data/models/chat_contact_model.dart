import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/user.dart';

class ChatContactModel {
  final String id;
  final ChatMessageModel? lastChatMessage;
  final int? notificationCount;
  final UserModel contact;

  ChatContactModel({
    required this.id,
    this.lastChatMessage,
    this.notificationCount,
    required this.contact,
  });

  factory ChatContactModel.fromJson(Map<String, dynamic> json) {
    print("ChatContactModel.fromJson: $json");
    return ChatContactModel(
      id: json['id'],
      lastChatMessage: json['last_chat_message'] != null
          ? ChatMessageModel.fromJson(json['last_chat_message'], json['id'])
          : null, // Conditionally parse the new structure
      notificationCount: json['notification_count'],
      contact: UserModel.fromJson(json['contact']),
    );
  }
}
