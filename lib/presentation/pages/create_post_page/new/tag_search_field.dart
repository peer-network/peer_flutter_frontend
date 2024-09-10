import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/filtered_tags_list.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/selected_tags_grid.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TagSearchWidget extends StatefulWidget {
  final TextEditingController tagController;

  const TagSearchWidget({super.key, required this.tagController});

  @override
  State<TagSearchWidget> createState() => _TagSearchWidgetState();
}

class _TagSearchWidgetState extends State<TagSearchWidget>
    with TickerProviderStateMixin {
  final List<String> tags = [
    'flutter',
    'dart',
    'firebase',
    'backend',
    'frontend',
    'mobile',
    'web',
    'ui',
    'ux',
    'design',
    'database',
    'api',
    'cloud',
    'security'
  ];

  ValueNotifier<List<Map<String, dynamic>>> selectedTags =
      ValueNotifier<List<Map<String, dynamic>>>([]);
  ValueNotifier<List<String>> filteredTags = ValueNotifier<List<String>>([]);

  @override
  void initState() {
    super.initState();
    widget.tagController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    widget.tagController.removeListener(_onSearchChanged);
    for (var tag in selectedTags.value) {
      tag['controller'].dispose();
    }
    super.dispose();
  }

  void _onSearchChanged() {
    final query = widget.tagController.text.toLowerCase();

    setState(() {
      filteredTags.value = tags
          .where((tag) =>
              tag.toLowerCase().contains(query) &&
              !selectedTags.value.any((element) => element['tag'] == tag))
          .toList();
    });
  }

  void onTagSelected(String tag) {
    setState(() {
      widget.tagController.text = '';

      AnimationController controller = AnimationController(
        duration: AppDuration.postCreationTagAnimationTransitionDuration,
        vsync: this,
      );

      Animation<Offset> slideAnimation = Tween<Offset>(
        begin: const Offset(-0.25, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ));

      Animation<double> fadeAnimation = CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      );

      selectedTags.value.add({
        'tag': tag,
        'controller': controller,
        'slideAnimation': slideAnimation,
        'fadeAnimation': fadeAnimation,
      });

      filteredTags.value.remove(tag);
      tags.remove(tag);

      controller.forward();
    });
  }

  void onSeletedTagRemoved(String tag) {
    setState(() {
      final tagToRemove =
          selectedTags.value.firstWhere((element) => element['tag'] == tag);

      tagToRemove['controller'].dispose();
      selectedTags.value.remove(tagToRemove);

      filteredTags.value.add(tag);
      tags.add(tag);
      _onSearchChanged();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text('Add tags to help others to find your post')),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        SelectedTags(
            selectedTags: selectedTags,
            height: height,
            onSeletedTagRemoved: (tag) => onSeletedTagRemoved(tag)),
        TextField(
          controller: widget.tagController,
          decoration: const InputDecoration(
            hintText: 'Search tags...',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: AppPaddings.small),
        FilteredTagsList(
            tagController: widget.tagController,
            filteredTags: filteredTags,
            onTagSelected: (tag) => onTagSelected(tag))
      ],
    );
  }
}
