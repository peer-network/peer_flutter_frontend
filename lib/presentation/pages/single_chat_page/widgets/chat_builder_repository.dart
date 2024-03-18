import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/dummy_response/dummy_chat_messages_by_chat_id.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class ChatBuilderRepository {
  // TODO keine userId
  final String currentUserId;
  final DioClient _dioClient = DioClient();
  String? error;

  ChatBuilderRepository({required this.currentUserId});

  Future<List<ChatMessageModel>> fetchChatHistory(
    String chatId, // e.g. "1", "2", "3"
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // response = _dioClient.get(ApiEndpoints.chat, queryParameters: {'chatId': chatId});

      final response = dummy_get_chat_by_chatId(chatId);
      if (response.isEmpty) {
        throw Exception('Chat history not found for chatId: $chatId');
      }

      List<ChatMessageModel> chatHistory =
          response["messages"].map<ChatMessageModel>((x) {
        return ChatMessageModel.fromJson(
            x as Map<String, dynamic>, currentUserId);
      }).toList();
      return chatHistory;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      throw Exception('Failed to fetch chat history: $e');
    }
  }
}
