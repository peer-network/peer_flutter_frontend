class ChatMessageModel {
  final String id;
  final String content;
  final String senderId;
  final String chatId;
  final DateTime created_at;
  final bool isSender;

  ChatMessageModel({
    required this.id,
    required this.content,
    required this.senderId,
    required this.chatId,
    required this.created_at,
    required this.isSender,
  });

  factory ChatMessageModel.fromJson(
      Map<String, dynamic> json, String currentUserId) {
    return ChatMessageModel(
      id: json['id'],
      content: json['content'],
      senderId: json['sender_id'],
      chatId: json['chat_id'],
      created_at: DateTime.parse(json['created_at']),
      // timestamp: json['timestamp'],
      isSender: json['sender_id'] ==
          currentUserId, // Determine based on currentUserId
    );
  }
}
