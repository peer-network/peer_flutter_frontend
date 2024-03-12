class ChatMessageModel {
  final String messageId;
  final String senderId;
  final String recipientId;
  final String content;
  final DateTime timestamp;
  final bool isSender;

  ChatMessageModel({
    required this.messageId,
    required this.senderId,
    required this.recipientId,
    required this.content,
    required this.timestamp,
    required this.isSender,
  });

  factory ChatMessageModel.fromJson(
      Map<String, dynamic> json, String currentUserId) {
    return ChatMessageModel(
      messageId: json['messageId'],
      senderId: json['senderId'],
      recipientId: json['recipientId'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
      isSender:
          json['senderId'] == currentUserId, // Determine based on currentUserId
    );
  }
}
