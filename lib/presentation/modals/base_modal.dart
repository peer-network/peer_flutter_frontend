import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class BaseModal extends StatelessWidget {
  const BaseModal({Key? key, required this.children, required this.title})
      : super(key: key);

  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.large),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: AppDimensions.modalControllerWidth,
              child: Divider(
                // No need for color definition (now over Theme)
                thickness: AppDimensions.modalControllerHeight,
              ),
            ),
            const SizedBox(height: AppPaddings.medium),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppPaddings.medium),
            ...children,
          ]),
    );
  }
}

// builds the modal widgets
Future<void> buildMortal(BuildContext context, Widget mordal) {
  FocusScope.of(context).requestFocus(FocusNode());
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(top: AppBorders.defaultRadius.topLeft)),
      context: context,
      builder: (context) => Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: mordal));
}
