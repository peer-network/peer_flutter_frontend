// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/dummy_response/dummy_chat_messages_by_chat_id.dart';
// import 'package:peer_app/data/models/chat_message_model.dart';
// import 'package:peer_app/data/models/chat_model.dart';

// class ChatBuilderRepository {
//   // TODO keine userId
//   final String currentUserId;
//   final ChatModel chat;

//   String? error;

//   ChatBuilderRepository({required this.currentUserId, required this.chat});

//   Future<List<ChatMessageModel>> fetchChatHistory(
//     String chatId, // e.g. "1", "2", "3"
//   ) async {
//     try {
//       await Future.delayed(const Duration(seconds: 2));

//       // final response = dummy_get_chat_by_chatId(chatId);
//       final response = dummy_get_chat_by_chatId(chatId);
//       if (response.isEmpty) {
//         throw Exception('Chat history not found for chatId: $chatId');
//       }

//       List<ChatMessageModel> chatHistory =
//           response["messages"].map<ChatMessageModel>((x) {
//         return ChatMessageModel.fromJson(
//             x as Map<String, dynamic>, currentUserId);
//       }).toList();
//       return chatHistory;
//     } catch (e, s) {
//       error = e.toString();
//       CustomException(e.toString(), s).handleError();
//       throw Exception('Failed to fetch chat history: $e');
//     }
//   }
// }

// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/models/chat_message_model.dart';
// import 'package:peer_app/data/models/chat_model.dart';

// class ChatBuilderRepository {
//   final String currentUserId;
//   final ChatModel chat; // Instance of ChatModel containing the chat messages

//   String? error;

//   ChatBuilderRepository({required this.currentUserId, required this.chat});

//   Future<List<ChatMessageModel>> fetchChatHistory() async {
//     try {
//       await Future.delayed(const Duration(seconds: 2));

//       if (chat.messages.isEmpty) {
//         throw Exception('Chat history not found');
//       }

//       // Map the ChatMessageModel from the messages list in the ChatModel instance
//       List<ChatMessageModel> chatHistory =
//           chat.messages.map<ChatMessageModel>((x) {
//         return ChatMessageModel.fromJson(
//             x as Map<String, dynamic>, currentUserId);
//       }).toList();

//       return chatHistory;
//     } catch (e, s) {
//       error = e.toString();
//       CustomException(e.toString(), s).handleError();
//       throw Exception('Failed to fetch chat history: $e');
//     }
//   }
// }

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

      // Handle the messages correctly whether they are already ChatMessageModel instances or raw maps
      List<ChatMessageModel> chatHistory =
          chat.messages.map<ChatMessageModel>((x) {
        if (x is ChatMessageModel) {
          // If it's already a ChatMessageModel, use it directly
          return x;
          // This sould be alright, now the next error should be in the widgets below
          // } else if (x is Map<String, dynamic>) {
          //   // If it's a Map, convert it to ChatMessageModel
          //   return ChatMessageModel.fromJson(x, currentUserId);
        } else {
          throw Exception('Invalid message format');
        }
      }).toList();

      return chatHistory;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      throw Exception('Failed to fetch chat history: $e');
    }
  }
}
