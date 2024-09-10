import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_content.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';

class OptionsPage extends StatelessWidget {

  const OptionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ImageIcon(
            IconLibrary.arrowWest.icon,
            color: Theme.of(context).brightness == Brightness.light
                ? lightTheme.colorScheme.secondary
                : darkTheme.colorScheme.secondary,
              size: AppDimensions.iconSizeLarge,
                ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text('Options',
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? lightTheme.colorScheme.secondary
                    : darkTheme.colorScheme.secondary,),
        ),
      ),
      body: Container(
        child: OptionsContent(),
      ),
    );
  }
}