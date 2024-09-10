import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

class ChangePasswordSection extends StatefulWidget {
  @override
  _ChangePasswordSectionState createState() => _ChangePasswordSectionState();
}

class _ChangePasswordSectionState extends State<ChangePasswordSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align title to the left
        children: [
          Text(
              'Change password',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? lightTheme.colorScheme.secondary
                        : darkTheme.colorScheme.secondary,
                  ),
            ),
          const SizedBox(height: AppPaddings.medium),
          if (_isExpanded)
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Old Password',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppPaddings.small),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppPaddings.small),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Repeat new Password',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppPaddings.medium),
              ],
            ),
          SizedBox(
            width: double.infinity, // Full-width button
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).buttonTheme.colorScheme?.outline, // Button background color
                foregroundColor: Theme.of(context).colorScheme.secondary, // Text color
              ),
              child: Text(_isExpanded ? 'Change Password' : 'Change Password'),
            ),
          ),
        ],
      ),
    );
  }
}
