import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class SelectedTags extends StatefulWidget {
  final ValueNotifier<List<Map<String, dynamic>>> selectedTags;
  final double height;
  final Function(String) onSeletedTagRemoved;

  const SelectedTags(
      {super.key,
      required this.selectedTags,
      required this.height,
      required this.onSeletedTagRemoved});

  @override
  State<SelectedTags> createState() => _SelectedTagsState();
}

class _SelectedTagsState extends State<SelectedTags> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.selectedTags,
      builder: (context, value, child) => value.isNotEmpty
          ? Padding(
              padding: EdgeInsets.only(bottom: widget.height * 0.01),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: value.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  final tagData = value[index];

                  return FadeTransition(
                    opacity: tagData['fadeAnimation'],
                    child: SlideTransition(
                      position: tagData['slideAnimation'],
                      child: Container(
                        padding: const EdgeInsets.all(AppPaddings.small),
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? LightColors.fadeBright
                                    : DarkColors.fadeBright,
                            borderRadius: AppBorders.selectedTagRadius),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: AppPaddings.small),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  tagData['tag'],
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                CustomIconButton(
                                  icon: IconLibrary.close,
                                  onPressed: () {
                                    widget.onSeletedTagRemoved(tagData['tag']);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
