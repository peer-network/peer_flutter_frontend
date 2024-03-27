import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  // takes in a controller to be able to access the search query and make use of it

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
              borderSide: const BorderSide(color: CustomColors.primaryColor),
            ),
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
