// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_chat.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/chat_messages_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class SingleChatProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<ChatMsg> _chatHistory = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchChatMessenges
  SingleChatProvider() {
    fetchChatHistorie();
  }

  List<ChatMsg> get chatHistorie => _chatHistory;

  // TODO: implement caching
  // caching options
  // network only
  // cache only
  // cache and network

  Future<void> fetchChatHistorie() async {
    isLoading = true;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.chatMessenges);
      // TODO replace trough real api call
      await Future.delayed(const Duration(seconds: 2));
      const response = dummyChat;
      // Model the response
      _chatHistory = List<ChatMsg>.from(response[0]["messages"]
          .map((x) => ChatMsg.fromJson(x as Map<String, dynamic>)));
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
