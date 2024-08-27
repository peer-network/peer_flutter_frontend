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
        //_setTokenHeader(accessToken);
        //await _saveTokens(accessToken, refreshToken);
        return true;
      }
      return false;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      return false;
    }
  }

  Future<void> _saveTokens(String accessToken, String refreshToken) async {
    var box = await Hive.openBox('authBox');
    await box.put('auth_access_token', accessToken);
    await box.put('auth_refresh_token', refreshToken);
  }

  Future<String?> getAccessToken() async {
    var box = await Hive.openBox('authBox');
    return box.get('auth_access_token');
  }

  Future<String?> _getRefreshToken() async {
    var box = await Hive.openBox('authBox');
    return box.get('auth_refresh_token');
  }

  void _setTokenHeader(String token) {
    gqlClient.client.cache.writeQuery(
      Request(
        operation: Operation(document: gql('')),
        variables: {},
      ),
      data: {'Authorization': 'Bearer $token'},
    );
  }

  Future<bool> refreshAccessToken() async {
    const String refreshMutation = r'''
      mutation RefreshToken($refreshToken: String!) {
        refreshToken(refreshToken: $refreshToken) {
          accessToken
        }
      }
    ''';

    final String? refreshToken = await _getRefreshToken();
    if (refreshToken == null) {
      return false;
    }

    final MutationOptions options = MutationOptions(
      document: gql(refreshMutation),
      variables: <String, dynamic>{
        'refreshToken': refreshToken,
      },
    );

    try {
      final QueryResult result = await gqlClient.mutate(options);

      if (result.hasException) {
        error = result.exception.toString();
        CustomException(error!, StackTrace.current).handleError();
        return false;
      }

      final String? newAccessToken =
          result.data?['refreshToken']['accessToken'];
      if (newAccessToken != null) {
        _setTokenHeader(newAccessToken);
        await _saveTokens(newAccessToken, refreshToken);
        return true;
      }
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
