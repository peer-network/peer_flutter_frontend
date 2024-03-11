import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class WalletSheet extends StatelessWidget {
  const WalletSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    return ConstrainedBox(
      constraints: BoxConstraints.tight(Size(
          double.infinity,
          MediaQuery.of(context).size.height -
              kBottomNavigationBarHeight -
              MediaQuery.of(context).size.height * 0.09)),
      child: DraggableScrollableSheet(
        snap: true,
        snapAnimationDuration: Durations.short4,
        initialChildSize:
            0.1, // starting size as a fraction of the screen height
        minChildSize: 0.1, // minimum size as a fraction of the screen height
        maxChildSize: 1.0, // maximum size as a fraction of the screen height
        builder: (BuildContext context, ScrollController scrollController) {
          return NotificationListener<DraggableScrollableNotification>(
            onNotification: (notification) {
              // You can add your logic here to animate or react to the dragging
              // onNotification => get wallet data
              //TODO: get new data when this is fired
              return true;
            },
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: CustomColors.primaryColor),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverList.list(children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.45),
                        child: Container(
                          width: 10, // Adjust the width as necessary
                          height:
                              6, // Adjust the thickness of the bar as necessary
                          decoration: const BoxDecoration(
                            color: Colors
                                .white, // Use any color that fits the theme
                            borderRadius: BorderRadius.all(
                                Radius.circular(3)), // Makes it rounded
                          ),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8), // Adds some space on top and bottom
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Deine Wallet',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: CustomColors.lightTextColor)),
                      ),
                      const SizedBox(
                        height: AppPaddings.large,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: CustomColors.backgroundCardColor,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            width: AppDimensions.avatarSize +
                                MediaQuery.of(context).size.width * 0.04,
                            height: AppDimensions.avatarSize +
                                MediaQuery.of(context).size.height * 0.04,
                            image: const AssetImage(
                              'assets/icons/diamond_wallet.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppPaddings.large,
                      ),
                      (walletSheetProvider.state == WalletState.none ||
                              walletSheetProvider.state == WalletState.loading)
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 80),
                              //TODO: make this production ready appwide
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                width: AppDimensions.avatarSize +
                                    MediaQuery.of(context).size.width * 0.04,
                                height: AppDimensions.iconSizeSmall,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: LinearProgressIndicator(
                                  backgroundColor: Colors.grey[200],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 222, 201, 201)),
                                ),
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                    walletSheetProvider.wallet.totalCredits
                                        .toString(),
                                    style: const TextStyle(
                                        color: CustomColors.lightTextColor)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Text('Credis in deiner Wallet',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color:
                                                  CustomColors.lightTextColor)),
                                ),
                              ],
                            )
                    ])
                  ],
                )),
          );
        },
      ),
    );
  }
}
