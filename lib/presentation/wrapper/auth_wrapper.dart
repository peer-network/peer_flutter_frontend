import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/auth_provider.dart';

class AuthWrapper extends StatelessWidget {
  final Widget authenticatedChild;
  final Widget unauthenticatedChild;

  const AuthWrapper({
    super.key,
    required this.authenticatedChild,
    required this.unauthenticatedChild,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) {
        switch (authProvider.authState) {
          case AuthStates.loading:
            return const Center(child: CircularProgressIndicator());
          case AuthStates.authenticated:
            return authenticatedChild;
          case AuthStates.unauthenticated:
          default:
            return unauthenticatedChild;
        }
      },
    );
  }
}
