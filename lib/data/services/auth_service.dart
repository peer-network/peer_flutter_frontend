import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/mutations.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class AuthService {
  final gqlClient = GraphQLClientSingleton();
  String? error;

  AuthService._privateConstructor();

  static final AuthService _instance = AuthService._privateConstructor();

  factory AuthService() {
    return _instance;
  }

  Future<bool> loginWithCredentials(String email, String password) async {
    MutationOptions options = MutationOptions(
      document: Mutations.loginWithCredentials,
      variables: <String, String>{
        'email': email,
        'password': password,
      },
      //update: (cache, result) => cache,
    );

    try {
      final QueryResult result = await gqlClient.mutate(options);

      if (result.hasException) {
        error = result.exception.toString();
        CustomException(error!, StackTrace.current).handleError();
        return false;
      }
      final String? accessToken = result.data?['login']['accessToken'];
      final String? refreshToken = result.data?['login']['refreshToken'];
      if (accessToken != null &&
          refreshToken != null &&
          accessToken.isNotEmpty &&
          refreshToken.isNotEmpty) {
        return true;
      }
      error = result.data?['login']['errorMessage'];
      return false;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      return false;
    }
  }

  Future<void> logout() async {
    var box = await Hive.openBox('authBox');
    await box.clear();
    await box.close();
  }

  /*
  Future<bool> loginWithTok en() async {
    String? token = await _getToken();
    print("token: $token");
    if (token == null) {
      return false;
    }

    bool isValid = await validateToken();
    if (isValid) {
      _setTokenHeader(token);
      return true;
    } else {
      return false;
    }
  }

  Future<void> _saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  void _setTokenHeader(String directToken) async {
    _dioClient.updateHeaders({'Authorization': 'Bearer $directToken'});
  }

  Future<bool> validateToken() async {
    // TODO check if token is valid
    return true;
  }

  Future<String?> _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }*/
}
