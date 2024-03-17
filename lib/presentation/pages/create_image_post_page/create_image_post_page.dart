// file: multi_image_upload_widget.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_image_post_body.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CreateImagePostPage extends StatelessWidget {
  const CreateImagePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      makeScrollable: false,
      appBar: SecondaryAppbar(
        title: "Beitrag teilen",
        actions: [
          LinkButtonComponent(
            text: "Posten",
            onPressed: () {},
            isUnderlined: false,
          )
        ],
      ),
      child: const MultiImageUploadWidget(),
    );
  }
}

class MultiImageUploadWidget extends StatefulWidget {
  const MultiImageUploadWidget({Key? key}) : super(key: key);

  @override
  MultiImageUploadWidgetState createState() => MultiImageUploadWidgetState();
}

class MultiImageUploadWidgetState extends State<MultiImageUploadWidget> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _images = [];
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _pickImages();
  }

  Future<void> _pickImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();

    if (selectedImages.isNotEmpty) {
      setState(() {
        _images = List.from(selectedImages);
      });
    }
  }

  // file: widgets/image_row.dart

  Widget _buildImageRow() {
    return _images.isEmpty
        ? Center(
            child: CreateImagePostBody(
              onImageSelected: _pickImages,
            ),
          )
        : SizedBox(
            height: MediaQuery.of(context).size.width *
                0.7, // Adjust based on your AspectRatio
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _images.length,
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
                          File(_images[index].path),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        if (index == _images.length - 1)
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: CustomIconButton(
                              icon: IconLibrary.plus,
                              onPressed: _pickImages,
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImageRow(),
        _images.isNotEmpty
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
}
