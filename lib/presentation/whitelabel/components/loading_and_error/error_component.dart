import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ErrorComponent extends StatelessWidget {
  const ErrorComponent({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppPaddings.extraLarge),
          child: Text(error, style: Theme.of(context).textTheme.titleLarge),
        ),
      ],
    );
  }
}
