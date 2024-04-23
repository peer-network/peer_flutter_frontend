import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.searchElementContainerHight,
      width: double.infinity,
      child: Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Suchen ...',
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: AppBorders.defaultRadius,
                borderSide:
                    Theme.of(context).inputDecorationTheme.outlineBorder!),
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.fromLTRB(
              AppPaddings.medium,
              AppPaddings.tiny,
              AppPaddings.small,
              AppPaddings.tiny,
            ), // Adjust padding to center the text and icon
          ),
        ),
      ),
    );
  }
}
