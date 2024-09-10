import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

class BlockedUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blocked Users',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? lightTheme.colorScheme.secondary
                    : darkTheme.colorScheme.secondary,
              ),
        ),
      ),
      body: Center(
        child: Text(
          'List of Blocked Users',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? lightTheme.colorScheme.secondary
                    : darkTheme.colorScheme.secondary,
                fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                fontWeight: Theme.of(context).textTheme.headlineLarge?.fontWeight,
              ),
        ),
      ),
    );
  }
}
