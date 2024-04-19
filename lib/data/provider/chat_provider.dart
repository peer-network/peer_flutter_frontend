// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_contacts.dart';
import 'package:peer_app/data/models/chat_messages.dart';

class ChatProvider with ChangeNotifier {
  // final gqlClient = GraphQLClientSingleton();
  List<dynamic> _chatMessenges = [];
  bool isLoading = false;
  String? error;

  // init with fetchChatMessenges
  ChatProvider() {
    fetchChatMessenges();
  }

  List<dynamic> get chatMessenges => _chatMessenges;

  Future<void> fetchChatMessenges() async {
    isLoading = true;
    notifyListeners();
    try {
      // TODO replace trough real api call

      // definiere queryOption

      // führe query aus

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
