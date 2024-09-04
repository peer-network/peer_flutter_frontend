import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_content.dart';

class OptionsPage extends StatelessWidget {

  const OptionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text('Options',
        ),
      ),
      body: Container(
        child: OptionsContent(),
      ),
    );
  }
}