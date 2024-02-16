import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/login_page/login_page.dart';
import 'package:peer_app/presentation/pages/peer_page/peer_page.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> validateAuthToken() async {
      await Provider.of<AuthProvider>(context, listen: false).loginWithToken();
      print("Auth state: ");
      print(Provider.of<AuthProvider>(context, listen: false).authState);
    }

    return FutureBuilder(
      future: validateAuthToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const BasePage(
              child:
                  LoadingComponent()); // Show loading indicator while checking login status
        } else {
          if (Provider.of<AuthProvider>(context, listen: false).authState ==
              AuthStates.authenticated) {
            return const PeerPage(); // User is logged in
          } else {
            return const LoginPage(); // User is not logged in
          }
        }
      },
    );
  }
}
