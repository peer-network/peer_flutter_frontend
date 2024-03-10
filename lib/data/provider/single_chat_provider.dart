// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_chat.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/contacts_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class SingleChatProvider with ChangeNotifier {
  final String currentUserId;
  final DioClient _dioClient = DioClient();
  List<ChatMsg> _chatHistory = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchChatMessenges
  SingleChatProvider({required this.currentUserId}) {
    fetchChatHistorie();
  }

  List<ChatMsg> get chatHistorie => _chatHistory;

  Future<void> fetchChatHistorie() async {
    isLoading = true;
    notifyListeners();
    try {
      await Future.delayed(
          const Duration(seconds: 2)); // Simulating network delay for now
      const response =
          dummyChat; // Your dummy data or eventually real API response
      _chatHistory = response[0]["messages"].map<ChatMsg>((x) {
        return ChatMsg.fromJson(x as Map<String, dynamic>,
            currentUserId); // Pass currentUserId here
      }).toList();
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
