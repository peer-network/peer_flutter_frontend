// File: search_field.dart
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.searchElementContainerHight,
      width: double.infinity,
      child: TextField(
        controller: controller,
        style: const TextStyle(height: 1.0),
        decoration: InputDecoration(
          hintText: 'Suchen ...',
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: AppBorders.defaultRadius,
              borderSide: BorderSide.none),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: (AppDimensions.searchElementContainerHight - 20) / 2,
            horizontal: AppPaddings.medium,
          ),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
