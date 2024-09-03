import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exclude Tags',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'You can add Tags to your Blacklist to filter out your Feed.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _tagController,
                  decoration: InputDecoration(
                    hintText: 'Add filter ...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.check,
                  color: _isButtonEnabled ? Colors.blue : Colors.grey,
                ),
                onPressed: _isButtonEnabled ? _addTag : null,
              ),
            ],
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _excludedTags.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_excludedTags[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _excludedTags.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AllExcludedTagsScreen(),
                ),
              );
            },
            child: const Text('All my excluded Tags'),
          ),
        ],
      ),
    );
  }
}

class AllExcludedTagsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Excluded Tags'),
      ),
      body: Center(
        child: const Text('List of All Excluded Tags'),
      ),
    );
  }
}
