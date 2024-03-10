class ChatSession {
  final String chatSessionId;
  final String currentUserId;
  final Map<String, String> participants;
  final List<ChatMsg> messages;

  ChatSession({
    required this.chatSessionId,
    required this.currentUserId,
    required this.participants,
    required this.messages,
  });

  factory ChatSession.fromJson(Map<String, dynamic> json) {
    var messageList = json['messages'] as List;
    List<ChatMsg> messages = messageList
        .map((messageJson) =>
            ChatMsg.fromJson(messageJson, json['currentUserId']))
        .toList();
    return ChatSession(
      chatSessionId: json['chatSessionId'],
      currentUserId: json['currentUserId'],
      participants: Map<String, String>.from(json['participants']),
      messages: messages,
    );
  }
}

class ChatMsg {
  final String messageId;
  final String senderId;
  final String recipientId;
  final String content;
  final DateTime timestamp;
  final bool isSender;

  ChatMsg({
    required this.messageId,
    required this.senderId,
    required this.recipientId,
    required this.content,
    required this.timestamp,
    required this.isSender,
  });

  factory ChatMsg.fromJson(Map<String, dynamic> json, String currentUserId) {
    return ChatMsg(
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
