import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:provider/provider.dart';
// Assuming you have an AuthProvider that holds the state of the user's login and email verification status

typedef FutureVoidCallback = Future<void> Function();

class AuthWrapper {
  final BuildContext context;

  AuthWrapper(this.context);

  Future<void> protect(Function action) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    if (authProvider.authState == AuthStates.unauthenticated) {
      // _showModal('You need to be logged in.');
      return;
    }

    // if (authProvider.authState == AuthStates.notConfirmed) {
    //   _showModal('You need to confirm your email.');
    //   return;

    await action();
  }
}
