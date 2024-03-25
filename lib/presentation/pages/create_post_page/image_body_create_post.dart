import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/presentation/pages/create_post_page/empty_image_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
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
      required this.controller});

  final Function pickImages;
  final List<XFile> images;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        Image.file(
                          File(images[index].path),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        if (index == images.length - 1)
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: CustomIconButton(
                              icon: IconLibrary.plus,
                              onPressed: () => pickImages(),
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
