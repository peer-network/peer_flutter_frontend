import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delete account',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Deleting your account will delete all your content, your connections, and your Peer Tokens and Gems!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
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
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter Password ...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _isSwitchOn && _passwordController.text.isNotEmpty
                ? () {
                    // Implement delete account logic here
                  }
                : null,
            child: const Text('Delete Account'),
          ),
        ],
      ),
    );
  }
}
