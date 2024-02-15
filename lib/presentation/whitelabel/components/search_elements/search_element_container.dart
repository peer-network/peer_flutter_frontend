/// A container that wraps around small search or dropdpwn-button widgets
/// -> so far used in the "peer_page_extended" directory

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SearchElementContainer extends StatelessWidget {
  SearchElementContainer({super.key, required this.searchElement});

  Widget searchElement;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppPaddings.small,
        vertical: AppPaddings.tiny,
      ),
      child: SizedBox(
        width: AppDimensions.SearchElementContainerWidth,
        height: AppDimensions.SearchElementContainerHight,
        child: searchElement,
      ),
    );
  }
}
