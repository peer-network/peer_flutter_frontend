import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class RecipientListPage extends StatefulWidget {
  const RecipientListPage({super.key});

  @override
  State<RecipientListPage> createState() => _RecipientListPageState();
}

class _RecipientListPageState extends State<RecipientListPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: AppBorders.defaultRadius.topLeft,
          topRight: AppBorders.defaultRadius.topRight,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_downward)),
            title: const Text('Empfänger auswählen'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
            child: Column(
              children: [
                const SizedBox(height: AppPaddings.medium),
                TextField(
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Suche nach Empfänger',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.defaultRadius,
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return null;
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
