import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class UserService {
  final gqlClient = GraphQLClientSingleton();
  late UserModel _user;

  static final UserService _instance = UserService._internal();

  factory UserService() {
    return _instance;
  }

  UserService._internal();

  UserModel get user => _user;

  Future<void> initializeUser() async {
    try {
      final helloResult = await gqlClient.query(
        QueryOptions(
          document: Queries.hello,
        ),
      );

      if (helloResult.hasException) {
        throw CustomException(
            helloResult.exception.toString(), StackTrace.current);
      }

      final String userId = helloResult.data?['hello']['currentuserid'];
      if (userId.isEmpty) {
        throw CustomException("Failed to retrieve user ID", StackTrace.current);
      }

      final userDetailsResult = await gqlClient.query(
        QueryOptions(
          document: Queries.getUsers,
        ),
      );

      if (userDetailsResult.hasException) {
        throw CustomException(
            userDetailsResult.exception.toString(), StackTrace.current);
      }

      final List<dynamic> users = userDetailsResult.data?['users'];
      if (users.isEmpty) {
        throw CustomException(
            "No user found with the given ID", StackTrace.current);
      }

      final userData = users.firstWhere((user) => user['id'] == userId);
      _user = UserModel.fromJson(userData);
    } catch (e) {
      throw CustomException(e.toString(), StackTrace.current);
    }
  }
}
