// File: image_popup_widget.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class ImagePopupWidget extends StatelessWidget {
  final File imageFile;

  const ImagePopupWidget({super.key, required this.imageFile});

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Flexible(
                    child: InteractiveViewer(
                      minScale: 0.1,
                      maxScale: 4.0,
                      child: Image.file(
                        imageFile,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CustomIconButton(
                        icon: IconLibrary.close,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Theme.of(context).colorScheme.primary,
                        sizeType: SizeType.large,
                      ),
                      CustomIconButton(
                        icon: IconLibrary.trash,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Theme.of(context).colorScheme.primary,
                        sizeType: SizeType.large,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: IconLibrary.edit,
      onPressed: () {
        _showImageDialog(context);
      },
      color: Theme.of(context).colorScheme.primary,
      sizeType: SizeType.large,
    );
  }
}
