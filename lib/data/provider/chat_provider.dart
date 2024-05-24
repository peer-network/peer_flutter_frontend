import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/mutations.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/data/new_dummy_response/new_dummy_chat_data.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';

class ChatProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<ChatModel> _chats = [];
  bool isLoading = false;
  String? error;
  final String currentUserId;

  List<ChatModel> get chats => _chats;

  ChatProvider(this.currentUserId) {
    fetchChats();
  }

  Future<void> fetchChats() async {
    isLoading = true;
    error = null;
    notifyListeners();

    List<Map<String, dynamic>> dummyChats = dummyChatMessagesData;

    // Assuming 'responseChat' is a List<Map<String, dynamic>> containing the JSON data for chats
    for (var chatJson in dummyChats) {
      // Deserialize the ChatModel without custom user logic
      var chatModel = ChatModel.fromJson(chatJson);

      // Apply the custom user logic to the messages after initial deserialization
      var processedMessages = chatModel.messages
          .map((msg) => msg.copyWith(isSender: msg.senderId == currentUserId))
          .toList();

      // Update the ChatModel with the processed messages
      var updatedChatModel = chatModel.copyWith(messages: processedMessages);

      // Add the updated chat model to your chats list
      _chats.add(updatedChatModel);

      isLoading = false;
      notifyListeners();
    }

    /*
    final queryOption = QueryOptions(
      document: Queries.chat,
      fetchPolicy: FetchPolicy.networkOnly,
      variables: {
        'userId': currentUserId,
      },
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);
      // print("queryResult: ${queryResult.data.toString()}");

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
        isLoading = false;
        notifyListeners();
        return;
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException("No data found", StackTrace.current).handleError();
        isLoading = false;
        notifyListeners();
        return;
      }

      final responseChat = queryResult.data!["peer2_chats"] as List<dynamic>;

      try {
        _chats.clear();
        _chats.addAll(List<ChatModel>.fromJson(
            responseChat.map((x) => ChatModel.fromJson(x, currentUserId))));
      } catch (e, s) {
        error = e.toString();
        CustomException(e.toString(), s).handleError();
      }
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
    }

    isLoading = false;
    notifyListeners();*/
  }

  Future<void> createChatMessage(Map<String, dynamic> newChatMessage) async {
    /*MutationOptions mutationOptions = MutationOptions(
      document: Mutations.createChatMessage,
      variables: newChatMessage,
    );

    try {
      QueryResult<Object?> queryResult =
          await gqlClient.mutate(mutationOptions);

      print(queryResult.toString());
      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      final responseFeed = queryResult.data!;

      try {
        _chats.insert(
          0,
          ChatModel.fromJson(
              responseFeed["insert_peer2_chat_messages_one"], currentUserId),
        );
      } catch (e) {
        error = e.toString();
        CustomException(e.toString(), StackTrace.current).handleError();
      }
    } catch (e) {
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }
    notifyListeners();*/
  }
}
