import 'package:flutter/material.dart';
import 'package:peer_app/data/services/auth_service.dart';

enum AuthStates {
  loading,
  // error,
  authenticated,
  unauthenticated,
}

class AuthProvider extends ChangeNotifier {
  AuthStates _authState = AuthStates.unauthenticated;

  AuthStates get authState => _authState;

  /*
  loginWithCredentials(String email, String password) async {
    _authState = AuthStates.loading;
    notifyListeners();

    // bool authSucces = await AuthService().loginWithCredentials(email, password);
    //wait 2 seconds to simulate a real login
    await Future.delayed(const Duration(seconds: 2));
    bool authSucces = true;
    if (authSucces) {
      _authState = AuthStates.authenticated;
    } else {
      _authState = AuthStates.unauthenticated;
    }
  }

  Future<void> loginWithToken() async {
    await AuthService().loginWithToken().then((value) {
      if (value) {
        _authState = AuthStates.authenticated;
      } else {
        _authState = AuthStates.unauthenticated;
      }
      notifyListeners();
    });
  }

  logout() {
    _authState = AuthStates.unauthenticated;
    notifyListeners();
  }*/
}
