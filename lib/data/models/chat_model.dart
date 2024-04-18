import 'package:peer_app/data/models/chat_message_model.dart';

class ChatModel {
  final String id;
  final String image; // db enty can be null
  final String name;
  List<ChatMessageModel> messages;

  ChatModel({
    required this.id,
    required this.image,
    required this.name,
    this.messages = const [],
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'].toString(),
      image: json['image'],
      name: json['name'],
      // messages: (json['chat_messages'] as List)
      //     .map((message) => ChatMessageModel.fromJson(message, json['id']))
      //     .toList(),
      messages: [],
    );
  }

  // factory ChatModel.fromJson(Map<String, dynamic> json, String currentUserId) {
  //   var messageList = json['chat_messages'] as List;
  //   List<ChatMessageModel> messages = messageList
  //       .map((messageJson) =>
  //           ChatMessageModel.fromJson(messageJson, currentUserId))
  //       .toList();

  //   return ChatModel(
  //     id: json['id'].toString(),
  //     image: json['image'],
  //     name: json['name'],
  //     messages: messages,
  //   );
  // }
}
