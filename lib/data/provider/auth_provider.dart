import 'package:flutter/material.dart';
import 'package:peer_app/data/services/auth_service.dart';
import 'package:peer_app/data/services/user_service.dart';

enum AuthStates {
  loading,
  authenticated,
  unauthenticated,
}

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  final UserService _userService = UserService();

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
      await _userService.initializeUser();

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
      if (_authService.isAnyTokenExpired(token)) {
        bool isRefreshTokenExpired = _authService
            .isAnyTokenExpired(await _authService.getRefreshToken());
        if (isRefreshTokenExpired) {
          _authState = AuthStates.unauthenticated;
        } else {
          bool refreshed = await _authService.refreshToken();
          if (refreshed) {
            final newToken = await _authService.getAccessToken();
            _authState = AuthStates.authenticated;
            await setTokenInGraphQL(newToken!);
            await _userService.initializeUser();
          } else {
            _authState = AuthStates.unauthenticated;
          }
        }
      } else {
        _authState = AuthStates.authenticated;
        await setTokenInGraphQL(token);
        await _userService.initializeUser();
      }
    } else {
      _authState = AuthStates.unauthenticated;
    }
    notifyListeners();
  }
}
