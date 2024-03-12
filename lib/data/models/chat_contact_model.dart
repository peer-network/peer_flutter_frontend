import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/user.dart';

class LastChatMessageModel {
  final String messageId;
  final String senderId;
  final String recipientId;
  final String content;
  final DateTime timestamp;

  LastChatMessageModel({
    required this.messageId,
    required this.senderId,
    required this.recipientId,
    required this.content,
    required this.timestamp,
  });

  factory LastChatMessageModel.fromJson(Map<String, dynamic> json) {
    return LastChatMessageModel(
      messageId: json['messageId'],
      senderId: json['senderId'],
      recipientId: json['recipientId'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}

class ChatContactModel {
  final String id;
  final ChatMessageModel? lastChatMessage; // Replaced fields
  final int? notificationCount;
  final UserModel contact;

  ChatContactModel({
    required this.id,
    this.lastChatMessage, // Updated parameter
    this.notificationCount,
    required this.contact,
  });

  factory ChatContactModel.fromJson(Map<String, dynamic> json) {
    return ChatContactModel(
      id: json['id'],
      lastChatMessage: json['last_chat_message'] != null
          ? ChatMessageModel.fromJson(json['last_chat_message'], json['id'])
          : null, // Conditionally parse the new structure
      notificationCount: json['notificationCount'],
      contact: UserModel.fromJson(json['contact']),
    );
  }
}
