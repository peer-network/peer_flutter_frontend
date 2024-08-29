import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/mutations.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

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
        await _saveTokens(accessToken, refreshToken);
        await gqlClient.updateToken(accessToken);
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
    await gqlClient.updateToken(null);
    await box.close();
  }

  Future<void> _saveTokens(String accessToken, String refreshToken) async {
    var box = await Hive.openBox('authBox');
    await box.put('accessToken', accessToken);
    await box.put('refreshToken', refreshToken);
    await box.close();
  }

  Future<String?> getAccessToken() async {
    var box = await Hive.openBox('authBox');
    return box.get('accessToken');
  }

  Future<String?> getRefreshToken() async {
    var box = await Hive.openBox('authBox');
    return box.get('refreshToken');
  }

  Future<bool> refreshToken() async {
    var box = await Hive.openBox('authBox');
    final String? refreshToken = box.get('refreshToken');

    if (refreshToken == null ||
        refreshToken.isEmpty ||
        JwtDecoder.isExpired(refreshToken)) {
      return false;
    }

    try {
      MutationOptions options = MutationOptions(
        document: Mutations.refreshToken,
        variables: <String, String>{
          'refreshToken': refreshToken,
        },
      );

      final QueryResult result = await gqlClient.mutate(options);

      if (result.hasException) {
        error = result.exception.toString();
        CustomException(error!, StackTrace.current).handleError();
        return false;
      }

      final String? newAccessToken = result.data?['refresh']['accessToken'];
      final String? newRefreshToken = result.data?['refresh']['refreshToken'];

      if (newAccessToken != null && newAccessToken.isNotEmpty) {
        await _saveTokens(newAccessToken, newRefreshToken ?? refreshToken);
        await gqlClient.updateToken(newAccessToken);
        return true;
      }

      return false;
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
      return false;
    }
  }

  Future<bool> isRefreshTokenExpired() async {
    final refreshToken = await getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return true;
    }
    return JwtDecoder.isExpired(refreshToken);
  }
}
