import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

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
        children: [
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
            ElevatedButton(
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
        ],
      ),
    );
  }
}
