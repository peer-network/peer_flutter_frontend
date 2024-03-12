import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_chat_contacts.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class ChatContactsProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<ChatContactModel> _chatContacts = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchChatMessenges
  ChatContactsProvider() {
    fetchChatContacts();
  }

  List<ChatContactModel> get chatContacts => _chatContacts;

  // TODO: implement caching
  // caching options
  // network only
  // cache only
  // cache and network

  Future<void> fetchChatContacts() async {
    isLoading = true;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.chatMessenges);
      // TODO replace trough real api call
      await Future.delayed(const Duration(seconds: 1));
      const response = dummyChatContacts;
      // Model the response
      _chatContacts = List<ChatContactModel>.from(
          response["chat_contacts"]!.map((x) => ChatContactModel.fromJson(x)));
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
