import 'package:flutter/material.dart';

class ExcludeContentTypes extends StatefulWidget {
  @override
  _ExcludeContentTypesState createState() => _ExcludeContentTypesState();
}

class _ExcludeContentTypesState extends State<ExcludeContentTypes> {
  bool _textPosts = true;
  bool _imagePosts = false;
  bool _videoPosts = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Exclude Content-Types',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),

          // Description
          Text(
            'You can exclude Content-Types to alter your feed.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white60,
                ),
          ),
          const SizedBox(height: 16),

          // Text Posts Toggle
          _buildToggleRow('Text Posts', _textPosts, (value) {
            _onToggleSwitch(value, 'text');
          }),

          const SizedBox(height: 16),

          // Image Posts Toggle
          _buildToggleRow('Image Posts', _imagePosts, (value) {
            _onToggleSwitch(value, 'image');
          }),

          const SizedBox(height: 16),

          // Video Posts Toggle
          _buildToggleRow('Video Posts', _videoPosts, (value) {
            _onToggleSwitch(value, 'video');
          }),
        ],
      ),
    );
  }

  void _onToggleSwitch(bool value, String switchType) {
    // Count how many switches are currently turned on
    int activeCount = (_textPosts ? 1 : 0) + (_imagePosts ? 1 : 0) + (_videoPosts ? 1 : 0);

    // If the user is trying to turn off the last active switch, prevent it
    if (activeCount == 1 && !value) {
      return;
    }

    // Update the state based on which switch is being toggled
    setState(() {
      switch (switchType) {
        case 'text':
          _textPosts = value;
          break;
        case 'image':
          _imagePosts = value;
          break;
        case 'video':
          _videoPosts = value;
          break;
      }
    });
  }

  Widget _buildToggleRow(String title, bool value, ValueChanged<bool> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
        ),
      ],
    );
  }
}
