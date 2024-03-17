import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/image_libary.dart';

class CreateImagePostBody extends StatelessWidget {
  const CreateImagePostBody({super.key, required this.onImageSelected});

  final Function() onImageSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => onImageSelected(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPaddings.medium),
              child: Image(
                  image: ImageLibary.emptyImage.image,
                  width: AppDimensions.createPostEmptyImageHeight),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                image: IconLibrary.plus.icon,
                width: AppDimensions.iconSizeExtreLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
