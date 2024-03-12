import 'package:peer_app/data/models/user.dart';

// class ChatContactModel {
//   // first level depth
//   final String id;
//   final String? lastMessage;
//   final DateTime? lastMessageTime;
//   final int? notificationCount;
//   // second level depth
//   final UserModel contact; // id, username, profileImageUrl

//   ChatContactModel({
//     // first level depth
//     required this.id,
//     required this.lastMessage,
//     required this.lastMessageTime,
//     required this.notificationCount,
//     // second level depth
//     required this.contact, // id, username, profileImageUrl
//   });

//   factory ChatContactModel.fromJson(Map<String, dynamic> json) {
//     return ChatContactModel(
//       // first level depth
//       id: json['id'],
//       lastMessage: json['lastMessage'],
//       lastMessageTime: DateTime.parse(json['lastMessageTime']),
//       notificationCount: json['notificationCount'],
//       // second level depth
//       contact:
//           UserModel.fromJson(json['contact']), // id, username, profileImageUrl
//     );
//   }
// }

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
  final LastChatMessageModel? lastChatMessage; // Replaced fields
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
          ? LastChatMessageModel.fromJson(json['last_chat_message'])
          : null, // Conditionally parse the new structure
      notificationCount: json['notificationCount'],
      contact: UserModel.fromJson(json['contact']),
    );
  }
}
