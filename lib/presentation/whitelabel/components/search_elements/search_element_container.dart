/// A container that wraps around small search or dropdpwn-button widgets
/// -> so far used in the "peer_page_extended" directory

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SearchElementContainer extends StatelessWidget {
  const SearchElementContainer({super.key, required this.searchElement});

  final Widget searchElement;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppPaddings.small,
        vertical: AppPaddings.tiny,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            minHeight: 0, // Minimum height: effectively no constraint
            maxHeight: AppDimensions
                .searchElementContainerHight, // Maximum height: fixed value
            maxWidth: 100),
        child: searchElement, // Your flexible width widget
      ),
    );
  }
}
