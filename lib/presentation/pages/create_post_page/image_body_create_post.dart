import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/presentation/pages/create_post_page/components/custom_image_overlay_component.dart';
import 'package:peer_app/presentation/pages/create_post_page/components/image_settings.dart';
import 'package:peer_app/presentation/pages/create_post_page/empty_image_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class ImageBodyCreatePost extends StatelessWidget {
  const ImageBodyCreatePost(
      {super.key,
      required this.pickImages,
      required this.images,
      required this.controller,
      required this.activeImageAspectRatio,
      required this.onAspectRatioChanged,
      required this.removeImage,
      required this.addImages});

  final Function pickImages;
  final List<XFile> images;
  final Function(int index) removeImage;
  final ImageAspectRatios activeImageAspectRatio;
  final Function(ImageAspectRatios imageAspectRatio) onAspectRatioChanged;
  final TextEditingController controller;
  final Function addImages;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _imageRationChooser(context),
        _buildImageRow(context),
        images.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPaddings.medium,
                  vertical: AppPaddings.large,
                ),
                child: InputFieldComponent(
                  controller: controller,
                  maxLines: 8,
                  minLines: 8,
                  hintText: "Schreibe deinen Text...",
                ),
              )
            : Container(),
      ],
    );
  }

  Widget _imageRationChooser(BuildContext context) {
    return images.isEmpty
        ? Container()
        : Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPaddings.medium,
              vertical: AppPaddings.small,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooseImageAspectRatioButton(
                    imageAspectRatio: ImageAspectRatios.square,
                    isActive:
                        activeImageAspectRatio == ImageAspectRatios.square,
                    onPressed: (iar) =>
                        onAspectRatioChanged(ImageAspectRatios.square)),
                const SizedBox(width: AppPaddings.medium),
                ChooseImageAspectRatioButton(
                    imageAspectRatio: ImageAspectRatios.portrait,
                    isActive:
                        activeImageAspectRatio == ImageAspectRatios.portrait,
                    onPressed: (iar) =>
                        onAspectRatioChanged(ImageAspectRatios.portrait)),
                const SizedBox(width: AppPaddings.medium),
                ChooseImageAspectRatioButton(
                    imageAspectRatio: ImageAspectRatios.landscape,
                    isActive:
                        activeImageAspectRatio == ImageAspectRatios.landscape,
                    onPressed: (iar) =>
                        onAspectRatioChanged(ImageAspectRatios.landscape)),
              ],
            ),
          );
  }

  Widget _buildImageRow(BuildContext context) {
    return images.isEmpty
        ? Center(
            child: EmptyCreateImagePostBody(
              onImageSelected: () => pickImages(),
            ),
          )
        : SizedBox(
            height: MediaQuery.of(context).size.width *
                0.7, // Adjust based on your AspectRatio
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                      right: AppPaddings.medium,
                      left: index == 0 ? AppPaddings.medium : 0.0),
                  child: AspectRatio(
                    aspectRatio: AspectRatios.ar_1_1.doubleValue(),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageOverlayComponent(image: images[index]),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: ClipRect(
                            child: Container(
                                padding:
                                    const EdgeInsets.all(AppPaddings.small),
                                decoration: const BoxDecoration(
                                  color: Colors.transparent, // Subdued color
                                  shape: BoxShape.circle, // Circular shape
                                ),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ImagePopupWidget(
                                        imageFile: File(images[index].path),
                                      ),
                                      const SizedBox(width: AppPaddings.small),
                                      CustomIconButton(
                                        icon: IconLibrary.trash,
                                        onPressed: () {
                                          removeImage(index);
                                        },
                                        sizeType: SizeType.large,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        if (index == images.length - 1)
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: CustomIconButton(
                              icon: IconLibrary.plus,
                              onPressed: () => addImages(),
                              sizeType: SizeType.extraLarge,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}

class ChooseImageAspectRatioButton extends StatelessWidget {
  const ChooseImageAspectRatioButton(
      {super.key,
      required this.imageAspectRatio,
      required this.isActive,
      required this.onPressed});

  final ImageAspectRatios imageAspectRatio;
  final bool isActive;
  final Function(ImageAspectRatios imageAspectRatio) onPressed;

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      text: getImageAspectRatioName(imageAspectRatio),
      onPressed: () => onPressed(imageAspectRatio),
      isFilled: isActive,
      backgroundColor: CustomColors.primaryColor,
    );
  }
}
