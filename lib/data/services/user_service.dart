// changenotifierprovider that safes a list of users to cache them.

import 'package:peer_app/data/dummy_response/dummy_user_by_id.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/data/services/dio_client.dart';

class UserService {
  static final UserService _instance = UserService._internal();

  final List<UserModel> _users = [];
  final DioClient _dioClient = DioClient();

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
      user.toogleFollow();
      // await _dioClient.post(ApiEndpoints.follow, data: {"userId": userId});
      await Future.delayed(const Duration(seconds: 1));
      return true;
    } catch (e, s) {
      print('Error toggling follow: $e, $s');
      return false;
    }
  }

  Future<UserModel?> fetchNewUser(String userId) async {
    // fetches user from server
    // final response =
    //     await _dioClient.get(ApiEndpoints.userById, params: {'userId': userId});
    await Future.delayed(const Duration(seconds: 1));
    const data = dummyUserById;
    try {
      final user = UserModel.fromJson(data);
      _users.add(user);
      return user;
    } catch (e, s) {
      print('Error fetching user by id: $e, $s');
      return null;
    }
  }
}
