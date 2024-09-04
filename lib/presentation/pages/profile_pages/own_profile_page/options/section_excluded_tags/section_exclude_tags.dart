import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_excluded_tags/excluded_tags_list.dart';

class ExcludeTagsSection extends StatefulWidget {
  @override
  _ExcludeTagsSectionState createState() => _ExcludeTagsSectionState();
}

class _ExcludeTagsSectionState extends State<ExcludeTagsSection> {
  final TextEditingController _tagController = TextEditingController();
  bool _isButtonEnabled = false;
  List<String> _excludedTags = ['#Crypto', '#Blockchain', '#NSFW', '#AFD'];

  @override
  void initState() {
    super.initState();
    _tagController.addListener(() {
      setState(() {
        _isButtonEnabled = _tagController.text.isNotEmpty;
      });
    });
  }

  void _addTag() {
    if (_tagController.text.isNotEmpty) {
      setState(() {
        _excludedTags.add(_tagController.text);
        _tagController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exclude Tags',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: AppPaddings.small),
          Text(
            'You can add Tags to your Blacklist to filter out your Feed.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppPaddings.medium),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _tagController,
                  decoration: InputDecoration(
                    hintText: 'Add filter ...',
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.creditsSourceBarRadius,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: ImageIcon(
                  IconLibrary.check_filled.icon,
                  color: Theme.of(context).brightness == Brightness.light
                      ? lightTheme.iconTheme.color
                      : darkTheme.iconTheme.color,
                ),
                onPressed: _isButtonEnabled ? _addTag : null,
              ),
            ],
          ),
          const SizedBox(height: AppPaddings.medium),
          SizedBox(
            height: screenHeight * 2 / 3, // 2/3 of the screen height
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _excludedTags.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_excludedTags[index]),
                  trailing: IconButton(
                    icon: ImageIcon(
                      IconLibrary.trash.icon,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    onPressed: () {
                      setState(() {
                        _excludedTags.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: AppPaddings.medium),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AllExcludedTagsScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).buttonTheme.colorScheme?.outline, // Button background color
                foregroundColor: Theme.of(context).colorScheme.secondary, // Text color
              ),
              child: const Text('All my excluded Tags'),
            ),
          ),
        ],
      ),
    );
  }
}
