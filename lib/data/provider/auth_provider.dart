import 'package:flutter/material.dart';
import 'package:peer_app/data/services/auth_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

enum AuthStates {
  loading,
  authenticated,
  unauthenticated,
}

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();
  AuthStates _authState = AuthStates.loading;
  String? _error;

  AuthStates get authState => _authState;
  String? get error => _error;

  AuthProvider() {
    checkAuthStatus();
  }

  void setAuthState(AuthStates state) {
    _authState = state;
    notifyListeners();
  }

  Future<void> loginWithCredentials(String email, String password) async {
    _authState = AuthStates.loading;
    notifyListeners();

    bool success = await _authService.loginWithCredentials(email, password);
    if (success) {
      _authState = AuthStates.authenticated;
      _error = null;
    } else {
      _authState = AuthStates.unauthenticated;
      _error = _authService.error;
    }
    notifyListeners();
  }

  Future<void> logout() async {
    await _authService.logout();
    _authState = AuthStates.unauthenticated;
    notifyListeners();
  }

  Future<void> setTokenInGraphQL(String token) async {
    await _authService.gqlClient.updateToken(token);
  }

  Future<void> checkAuthStatus() async {
    _authState = AuthStates.loading;
    notifyListeners();

    final token = await _authService.getAccessToken();
    if (token != null && token.isNotEmpty) {
      if (JwtDecoder.isExpired(token)) {
        bool isRefreshTokenExpired = await _authService.isRefreshTokenExpired();
        if (isRefreshTokenExpired) {
          _authState = AuthStates.unauthenticated;
        } else {
          bool refreshed = await _authService.refreshToken();
          if (refreshed) {
            final newToken = await _authService.getAccessToken();
            _authState = AuthStates.authenticated;
            await setTokenInGraphQL(newToken!);
          } else {
            _authState = AuthStates.unauthenticated;
          }
        }
      } else {
        _authState = AuthStates.authenticated;
        await setTokenInGraphQL(token);
      }
    } else {
      _authState = AuthStates.unauthenticated;
    }
    notifyListeners();
  }
}
