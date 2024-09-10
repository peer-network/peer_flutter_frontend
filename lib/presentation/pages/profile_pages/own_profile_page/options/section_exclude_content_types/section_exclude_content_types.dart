import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_themes.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';


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
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exclude Content-Types',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                ? lightTheme.colorScheme.secondary
                : darkTheme.colorScheme.secondary,
            ),
          ),
          Text(
            'You can exclude Content-Types to alter your feed.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                ? lightTheme.colorScheme.secondary
                : darkTheme.colorScheme.secondary,
            ),
          ),
          const SizedBox(height: AppPaddings.medium),

          // Text Posts Toggle
          _buildToggleRow('Text Posts', _textPosts, (value) {
            _onToggleSwitch(value, 'text');
          }),

          const SizedBox(height: AppPaddings.medium),

          // Image Posts Toggle
          _buildToggleRow('Image Posts', _imagePosts, (value) {
            _onToggleSwitch(value, 'image');
          }),

          const SizedBox(height: AppPaddings.medium),

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
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                ? lightTheme.colorScheme.secondary
                : darkTheme.colorScheme.secondary,
              ),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Theme.of(context).buttonTheme.colorScheme?.outline,
          inactiveTrackColor: Theme.of(context).buttonTheme.colorScheme?.outlineVariant
        ),
      ],
    );
  }
}
