import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

class LogoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align title to the left
        children: [
          Text(
            'Log out',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? lightTheme.colorScheme.secondary
                      : darkTheme.colorScheme.secondary,
                ),
          ),
          const SizedBox(height: AppPaddings.small), // Adds space between title and button
          SizedBox(
            width: double.infinity, // Full-width button
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
          ),
        ],
      ),
    );
  }
}
