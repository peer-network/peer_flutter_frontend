import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/chat_model.dart';

class ChatBuilderRepository {
  final String currentUserId;
  final ChatModel chat; // Instance of ChatModel containing the chat messages

  String? error;

  ChatBuilderRepository({required this.currentUserId, required this.chat});

  Future<List<ChatMessageModel>> fetchChatHistory() async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      if (chat.messages.isEmpty) {
        throw Exception('Chat history not found');
      }

      List<ChatMessageModel> chatHistory =
          chat.messages.map<ChatMessageModel>((x) {
        return x;
      }).toList();

      return chatHistory;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      throw Exception('Failed to fetch chat history: $e');
    }
  }
}
