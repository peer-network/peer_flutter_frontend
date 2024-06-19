import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class UserService {
  static final UserService _instance = UserService._internal();
  final List<UserModel> _users = [];

  factory UserService() {
    return _instance;
  }

  UserService._internal();

  List<UserModel> get users => _users;

  Future<UserModel> getUser(String userId) async {
    try {
      UserModel? newUser = await fetchNewUser(userId);
      if (newUser != null) {
        return newUser;
      } else {
        // If no user is fetched, throw an exception
        throw Exception("User not found with ID: $userId");
      }
    } catch (e) {
      CustomException(e.toString(), StackTrace.current).handleError();
      rethrow;
    }
  }

  Future<bool> toggleFollow(String userId) async {
    print("...");
    return true;
  }

  Future<bool> toggleLike(String commentId) async {
    // try {
    //   // Assuming the user can have posts with comments
    //   for (UserModel user in _users) {
    //     for (var post in user.posts) {
    //       for (var comment in post.comments) {
    //         if (comment.id == commentId) {
    //           // comment.isLiked = !comment.isLiked!;
    //           // await Future.delayed(const Duration(seconds: 1)); // Simulate delay
    //           return true;
    //         }
    //       }
    //     }
    //   }
    //   throw Exception("Comment not found with ID: $commentId");
    // } catch (e, s) {
    //   CustomException(e.toString(), s).handleError();
    return false;
  }
}

Future<UserModel?> fetchNewUser(String userId) async {
  final gqlClient = GraphQLClientSingleton();
  final queryOption = QueryOptions(
    document: Queries.getUserById,
    fetchPolicy: FetchPolicy.networkOnly,
    variables: {'id': userId},
  );
  print(
      "Fetching user with ID: <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $userId");

  try {
    QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

    if (queryResult.hasException) {
      CustomException(queryResult.exception.toString(), StackTrace.current)
          .handleError();
    }

    if (queryResult.data == null) {
      CustomException(queryResult.toString(), StackTrace.current).handleError();
    }

    final responseData = queryResult.data!;
    final userData = responseData['getUserById'];

    if (userData != null) {
      // Add runtimeType to each post in the user data
      if (userData['posts'] != null) {
        userData['posts'] =
            List<Map<String, dynamic>>.from(userData['posts']).map((postJson) {
          postJson["runtimeType"] = postJson["contentType"];
          return postJson;
        }).toList();
      }

      final user = UserModel.fromJson(userData);
      // _users.add(user);
      return user;
    } else {
      throw Exception("User data is not available for ID $userId");
    }
  } catch (e, s) {
    CustomException(e.toString(), s).handleError();
    print('Error in fetching user: $e');
    return null;
  }
}
// }
