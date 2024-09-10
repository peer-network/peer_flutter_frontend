import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';  // For AppPaddings
import 'package:peer_app/presentation/whitelabel/icon_library.dart';  // For icons

class ListsScreen extends StatelessWidget {
  final String title;
  final String description;
  final List<String> items;

  const ListsScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPaddings.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: AppPaddings.medium),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items[index],
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    trailing: IconButton(
                      icon: ImageIcon(
                        IconLibrary.trash.icon,
                        color: Theme.of(context).colorScheme.error, // Theme color for delete
                      ),
                      onPressed: () {
                        // Implement deletion logic here
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
