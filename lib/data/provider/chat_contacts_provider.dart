// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_contacts.dart';
import 'package:peer_app/data/models/contacts_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class ChatContactsProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<ContactsModel> _contacts = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchChatMessenges
  ChatContactsProvider() {
    fetchContacts();
  }

  List<ContactsModel> get contacts => _contacts;

  // TODO: implement caching
  // caching options
  // network only
  // cache only
  // cache and network

  Future<void> fetchContacts() async {
    isLoading = true;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.chatMessenges);
      // TODO replace trough real api call
      await Future.delayed(const Duration(seconds: 1));
      const response = dummyContacts;
      // Model the response
      _contacts = List<ContactsModel>.from(
          response["contactsSummary"]!.map((x) => ContactsModel.fromJson(x)));
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
