import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_excluded_tags/lists_screen.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/create_post_page/text_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:provider/provider.dart';


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
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exclude Tags',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? lightTheme.colorScheme.secondary
                        : darkTheme.colorScheme.secondary,
                  ),
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
                icon: Icon(
                  Icons.check,
                  color: Theme.of(context).brightness == Brightness.light
                            ? lightTheme.iconTheme.color
                            : darkTheme.iconTheme.color,
                ),
                onPressed: _isButtonEnabled ? _addTag : null,
              ),
            ],
          ),
          const SizedBox(height: AppPaddings.medium),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _excludedTags.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_excludedTags[index],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                    ? lightTheme.colorScheme.secondary
                    : darkTheme.colorScheme.secondary,
                  ),
                ),
                trailing: CustomIconButton(
                icon: IconLibrary.trash,
                onPressed: () {},
                color: Theme.of(context).colorScheme.error,
                sizeType: SizeType.medium),
              );
            },
          ),
          const SizedBox(height: AppPaddings.medium),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListsScreen(
                      title: "All my excluded tags",
                      description: "You can add Tags yo your Blacklist to filter out your feed.",
                      items: ["Crypto", "Blockchain", "NSFW", "AFD"],),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).buttonTheme.colorScheme?.outline,  
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: const Text('All my excluded Tags'),
            ),
          )
        ],
      ),
    );
  }
}