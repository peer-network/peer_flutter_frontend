import 'package:flutter/foundation.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/dummy_response/dummy_chat_contacts.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/data/services/dio_client.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';

class ChatProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<ChatModel> _chats = [];
  bool isLoading = false;
  String? error;

  List<ChatModel> get chats => _chats;

  ChatProvider() {
    fetchChats();
  }

  Future<void> fetchChats() async {
    isLoading = true;
    error = null;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.chat,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);
      print("queryResult: ${queryResult.data.toString()}");

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException(queryResult.toString(), StackTrace.current)
            .handleError();
      }

      final responseChat = queryResult.data!;

      try {
        _chats.clear();
        _chats.addAll(List<ChatModel>.from(responseChat["peer2_users"][0]
                ["chat_participants"]
            .map((x) => ChatModel.fromJson(x["chat"]))));
      } catch (e, s) {
        error = e.toString();
        CustomException(e.toString(), s).handleError();
      }
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
    }

    isLoading = false;
    notifyListeners();
  }
}
