import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_view.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/peer_appbar.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/selection_bar_component.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';

class PeerPage extends StatelessWidget {
  const PeerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: const PeerAppbar(),
      bottomNavigationBar: PrimaryBottomNavbar(),
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SelectionBar(),
                ],
              ),
            ),
          ];
        },
        body: const FeedView(),
      ),
    );
  }
}
