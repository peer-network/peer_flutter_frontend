import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

class ChangeEmailSection extends StatefulWidget {
  @override
  _ChangeEmailSectionState createState() => _ChangeEmailSectionState();
}

class _ChangeEmailSectionState extends State<ChangeEmailSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align title to the left
        children: [
          Text(
            'Change email',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                ? lightTheme.colorScheme.secondary
                : darkTheme.colorScheme.secondary,
            ),
          ),
          const SizedBox(height: AppPaddings.medium), // Adds space between title and content
          if (_isExpanded)
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppPaddings.small),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'New E-Mail Address',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppPaddings.small),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Repeat new E-Mail Address',
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
              child: Text(_isExpanded ? 'Change E-Mail Address' : 'Change E-Mail Address'),
            ),
          ),
        ],
      ),
    );
  }
}
