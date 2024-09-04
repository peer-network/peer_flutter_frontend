import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class DeleteAccountSection extends StatefulWidget {
  @override
  _DeleteAccountSectionState createState() => _DeleteAccountSectionState();
}

class _DeleteAccountSectionState extends State<DeleteAccountSection> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delete account',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: AppPaddings.small),
          Text(
            'Deleting your account will delete all your content, your connections, and your Peer Tokens and Gems!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppPaddings.medium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Are you sure?'),
              Switch(
                value: _isSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isSwitchOn = value;
                  });
                },
                activeColor: Theme.of(context).buttonTheme.colorScheme?.outline,
                inactiveTrackColor:
                    Theme.of(context).buttonTheme.colorScheme?.outlineVariant,
              ),
            ],
          ),
          const SizedBox(height: AppPaddings.medium),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter Password ...',
              border: OutlineInputBorder(
                borderRadius: AppBorders.creditsSourceBarRadius,
              ),
            ),
          ),
          const SizedBox(height: AppPaddings.medium),
          // Centering the button
          Center(
            child: ElevatedButton(
              onPressed: _isSwitchOn && _passwordController.text.isNotEmpty
                  ? () {
                      // Implement delete account logic here
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme?.outline, // Button background color
                foregroundColor: Theme.of(context).colorScheme.secondary, // Text color
              ),
              child: const Text('Delete Account'),
            ),
          ),
        ],
      ),
    );
  }
}
