// changenotifierprovider that safes a list of users to cache them.

import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/dummy_response/dummy_user_by_id.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class UserService {
  static final UserService _instance = UserService._internal();

  final List<UserModel> _users = [];

  // Private constructor
  factory UserService() {
    return _instance;
  }

  UserService._internal();

  List<UserModel> get users => _users;

  Future<UserModel?> getUser(String userId) async {
    // checks if user is already in cache
    if (_users.any((user) => user.id == userId)) {
      return _users.firstWhere((user) => user.id == userId);
    } else {
      return await fetchNewUser(userId);
    }
  }

  Future<bool> toggleFollow(String userId) async {
    try {
      final user = _users.firstWhere((user) => user.id == userId);
      // user.toogleFollow();
      // await _dioClient.post(ApiEndpoints.follow, data: {"userId": userId});
      await Future.delayed(const Duration(seconds: 1));
      return true;
    } catch (e, s) {
      CustomException(e.toString(), s).handleError();
      return false;
    }
  }

  Future<UserModel?> fetchNewUser(String userId) async {
    await Future.delayed(const Duration(seconds: 1));
    const data = dummyUserById2; // Assuming this constant is defined as a Map.

    try {
      // Use null-aware operators to safely access data
      final userData = data['data']?['peer2_users']?.first; // Adjust this line
      if (userData != null) {
        final user = UserModel.fromJson(userData);
        _users.add(user);
        print('user >>>>> $user');
        return user;
      } else {
        throw Exception("User data is not available");
      }
    } catch (e, s) {
      CustomException(e.toString(), s).handleError();
      print('Output _users: $_users');
      print('Error in fetchNewUser: $e');
      return null;
    }
  }
}

// // changenotifierprovider that safes a list of users to cache them.

// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/dummy_response/dummy_user_by_id.dart';
// import 'package:peer_app/data/models/feed_model.dart';
// import 'package:peer_app/data/models/user_model.dart';
// import 'package:peer_app/data/services/dio_client.dart';

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
//     final Map<String, dynamic> data = Map.from(dummyUserById2); // Create a copy

//     try {
//       final userData = data['data']?['peer2_users']?.first;
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
