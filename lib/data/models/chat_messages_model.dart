import 'package:peer_app/data/models/user.dart';

class ChatMessage {
  // user
  final String id;
  final String? contactId;
  final UserModel contact;
  final String? lastMessage;
  final DateTime? lastMessageTime;
  final int? notificationCount;

  ChatMessage({
    required this.lastMessage,
    required this.contact,
    required this.id,
    required this.contactId,
    required this.lastMessageTime,
    required this.notificationCount,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'],
      contactId: json['contactId'],
      contact: UserModel.fromJson(json['contact']),
      lastMessage: json['message'],
      lastMessageTime: DateTime.parse(json['time']),
      notificationCount: json['notificationCount'],
    );
  }
}
