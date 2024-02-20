// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_contacts.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/data/services/dio_client.dart';

class ChatProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<dynamic> _chatMessenges = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchChatMessenges
  ChatProvider() {
    fetchChatMessenges();
  }

  List<dynamic> get chatMessenges => _chatMessenges;

  // TODO: implement caching
  // caching options
  // network only
  // cache only
  // cache and network

  Future<void> fetchChatMessenges() async {
    isLoading = true;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.chatMessenges);
      // TODO replace trough real api call
      await Future.delayed(const Duration(seconds: 2));
      const response = dummyChatMessenges;
      // Model the response
      _chatMessenges = List<ChatMessagesModel>.from(
          response["messeges"]!.map((x) => ChatMessagesModel.fromJson(x)));
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
