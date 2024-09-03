import 'package:flutter/material.dart';

class LogoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          // Implement log-out logic here
        },
        child: const Text('Log-Out'),
      ),
    );
  }
}
