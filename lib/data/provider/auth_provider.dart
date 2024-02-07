import 'package:flutter/material.dart';

enum AuthStates {
  loading,
  error,
  authenticated,
  unauthenticated,
}

class AuthProvider extends ChangeNotifier {
  AuthStates _authState = AuthStates.unauthenticated;

  AuthStates get authState => _authState;

  loginWithPassword(String username, String password) {
    _authState = AuthStates.loading;
    notifyListeners();

    Future.delayed(const Duration(seconds: 2));

    if (username == 'admin' && password == 'changeit') {
      _authState = AuthStates.authenticated;
      notifyListeners();
    } else {
      _authState = AuthStates.unauthenticated;
      notifyListeners();
    }
  }

  logout() {
    _authState = AuthStates.unauthenticated;
    notifyListeners();
  }
}
