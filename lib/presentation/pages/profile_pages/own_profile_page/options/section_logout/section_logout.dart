import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class LogoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: ElevatedButton(
        onPressed: () {
          // Implement log-out logic here
        },
        child: const Text('Log-Out'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.outline, // Button background color
          foregroundColor: Theme.of(context).colorScheme.secondary, // Text color
        ),
      ),
    );
  }
}