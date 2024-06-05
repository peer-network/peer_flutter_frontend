// // changenotifierprovider that safes a list of users to cache them.

// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/dummy_response/dummy_user_by_id.dart';
// import 'package:peer_app/data/models/user_model.dart';
// import 'package:peer_app/data/provider/contacts_provider.dart';

// class UserService {
//   static final UserService _instance = UserService._internal();

//   final List<UserModel> _users = [];

//   // Private constructor
//   factory UserService() {
//     return _instance;
//   }

//   UserService._internal();

//   List<UserModel> get users => _users;

//   Future<UserModel?> getUser(String userId) async {
//     // checks if user is already in cache
//     if (_users.any((user) => user.id == userId)) {
//       return _users.firstWhere((user) => user.id == userId);
//     } else {
//       return await fetchNewUser(userId);
//     }
//   }

//   Future<bool> toggleFollow(String userId) async {
//     try {
//       final user = _users.firstWhere((user) => user.id == userId);
//       // user.toogleFollow();
//       // await _dioClient.post(ApiEndpoints.follow, data: {"userId": userId});
//       await Future.delayed(const Duration(seconds: 1));
//       return true;
//     } catch (e, s) {
//       CustomException(e.toString(), s).handleError();
//       return false;
//     }
//   }

//   Future<UserModel?> fetchNewUser(String userId) async {
//     await Future.delayed(const Duration(seconds: 1));
//     const data = dummyUserById2; // Assuming this constant is defined as a Map.

//     try {
//       // Use null-aware operators to safely access data
//       final userData = data['data']?['peer2_users']?.first; // Adjust this line
//       if (userData != null) {
//         final user = UserModel.fromJson(userData);
//         _users.add(user);
//         print('user >>>>> $user');
//         return user;
//       } else {
//         throw Exception("User data is not available");
//       }
//     } catch (e, s) {
//       CustomException(e.toString(), s).handleError();
//       print('Output _users: $_users');
//       print('Error in fetchNewUser: $e');
//       return null;
//     }
//   }
// }

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
    // try {
    //   // Attempts to find the user in the cache
    //   UserModel user = _users.firstWhere((user) => user.id == userId);
    //   return user;
    // } on StateError {
    //   // If no user is found in cache, fetch new user
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
    try {
      final user = _users.firstWhere((user) => user.id == userId);
      // user.toggleFollow();
      // Assuming the follow/unfollow action is simulated with a delay
      await Future.delayed(const Duration(seconds: 1));
      return true;
    } catch (e, s) {
      CustomException(e.toString(), s).handleError();
      return false;
    }
  }

  Future<UserModel?> fetchNewUser(String userId) async {
    final gqlClient = GraphQLClientSingleton();
    final queryOption = QueryOptions(
      document: Queries.getUserById,
      fetchPolicy: FetchPolicy.networkOnly,
      variables: const {'id': "0c4762a8-0a39-11ef-b7f2-e89c25791d89"},
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      if (queryResult.data == null) {
        CustomException(queryResult.toString(), StackTrace.current)
            .handleError();
      }

      final responseData = queryResult.data!;
      final userData = responseData['getUserById'];

      if (userData != null) {
        // Add runtimeType to each post in the user data
        if (userData['posts'] != null) {
          userData['posts'] = List<Map<String, dynamic>>.from(userData['posts'])
              .map((postJson) {
            postJson["runtimeType"] = postJson["contentType"];
            return postJson;
          }).toList();
        }

        final user = UserModel.fromJson(userData);
        _users.add(user);
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
}
