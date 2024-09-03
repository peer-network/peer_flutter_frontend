import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';

class BlockedUsersSection extends StatelessWidget {
  //final UserModel user;

  const BlockedUsersSection({
    Key? key,
    //required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the blocked users page
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlockedUsersPage(), // Replace with actual route
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Blocked Users',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
            Row(
              children: [
                Text(
                  //there are no blocked users amount and list in userModel, so for now --> amountFollowed
                  //user.amountFollowed.toString(),
                  "12",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(width: 8.0),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BlockedUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blocked Users'),
      ),
      body: Center(
        child: Text(
          'List of Blocked Users',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
