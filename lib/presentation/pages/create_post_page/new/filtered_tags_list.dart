import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FilteredTagsList extends StatefulWidget {
  final TextEditingController tagController;
  final ValueNotifier<List<String>> filteredTags;
  final Function(String) onTagSelected;

  const FilteredTagsList(
      {super.key,
      required this.tagController,
      required this.filteredTags,
      required this.onTagSelected});

  @override
  State<FilteredTagsList> createState() => _FilteredTagsListState();
}

class _FilteredTagsListState extends State<FilteredTagsList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.filteredTags,
        builder: (context, filteredTags, child) {
          if (widget.tagController.text.isNotEmpty && filteredTags.isNotEmpty) {
            return SizedBox(
              height: filteredTags.length * 50,
              child: Scrollbar(
                interactive: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredTags.length,
                  itemBuilder: (context, index) {
                    final tag = filteredTags[index];
                    return SizedBox(
                      height: 50, //TODO: move hardcoded values to constants
                      child: ListTile(
                        title: Text(tag),
                        onTap: () {
                          widget.onTagSelected(tag);
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          }
          if (filteredTags.isEmpty && widget.tagController.text.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(AppPaddings.small),
              child: Text(
                'No matching tags found.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }
          return const SizedBox.shrink();
        });
  }
}
