import 'package:flutter/material.dart';
import 'package:peer_app/data/services/auth_service.dart';

enum AuthStates {
  loading,
  // error,
  authenticated,
  unauthenticated,
}

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();
  AuthStates _authState = AuthStates.unauthenticated;
  String? _error;

  AuthStates get authState => _authState;
  String? get error => _error;

  Future<void> loginWithCredentials(String email, String password) async {
    bool success = await _authService.loginWithCredentials(email, password);
    if (success) {
      _authState = AuthStates.authenticated;
      _error = null;
      notifyListeners();
    } else {
      _authState = AuthStates.unauthenticated;
      _error = _authService.error;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _authService.logout();
    _authState = AuthStates.unauthenticated;
    notifyListeners();
  }
}
