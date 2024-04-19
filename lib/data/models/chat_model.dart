import 'dart:ffi';

import 'package:peer_app/data/models/chat_message_model.dart';

class ChatModel {
  final String id;
  final String image; // db entry can be null, handle accordingly
  final String name;
  final int amountUnseenMessages;
  List<ChatMessageModel> messages;

  ChatModel({
    required this.id,
    required this.image,
    required this.name,
    required this.amountUnseenMessages,
    required this.messages,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json, String currentUserId) {
    var messageList = json['chat_messages'] as List<dynamic>;
    List<ChatMessageModel> messages = messageList
        .map((messageJson) =>
            ChatMessageModel.fromJson(messageJson, currentUserId))
        .toList();

    return ChatModel(
      id: json['id'],
      image: json['image'] ?? '', // Added null check for image
      name: json['name'],
      amountUnseenMessages: json['amount_unseen_messages'],
      messages: messages,
    );
  }
}
