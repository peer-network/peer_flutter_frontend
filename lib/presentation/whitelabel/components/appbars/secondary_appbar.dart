// import 'package:flutter/material.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';
// import 'package:peer_app/presentation/whitelabel/text_constants.dart';

// class SecondaryAppbar extends StatefulWidget implements PreferredSizeWidget {
//   const SecondaryAppbar({
//     super.key,
//     required this.title,
//     this.actions = const [],
//     this.profileImageUrl,
//   }) : preferredSize = const Size.fromHeight(kToolbarHeight);

//   final String title;
//   final List<Widget> actions;
//   final String? profileImageUrl; // Optional profile image URL

//   @override
//   final Size preferredSize;

//   @override
//   State<SecondaryAppbar> createState() => _SecondaryAppbarState();
// }

// class _SecondaryAppbarState extends State<SecondaryAppbar> {
//   @override
//   Widget build(BuildContext context) {
//     return BaseAppbar(
//       title: Row(
//         children: [
//           // Display a CircleAvatar or an empty container of the same size if no profile image is provided
//           if (widget.profileImageUrl != null)
//             Padding(
//               padding: const EdgeInsets.only(right: AppPaddings.small),
//               child: CircleAvatar(
//                 backgroundImage: NetworkImage(widget.profileImageUrl!),
//                 radius: 16, // Adjust the size to fit your design
//               ),
//             )
//           else
//             const SizedBox(
//                 width:
//                     32 + AppPaddings.small), // Width of CircleAvatar + padding
//           Expanded(
//             child: Text(
//               widget.title,
//               style: headlineMediumTextStyle(CustomColors.primaryTextColor),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//       leading: GestureDetector(
//         onTap: () {
//           Navigator.of(context).pop();
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(AppPaddings.medium),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'Zurück',
//               style: headlineSmallTextStyle(CustomColors.primaryTextColor),
//             ),
//           ),
//         ),
//       ),
//       actions: widget.actions.map((action) {
//         return Padding(
//           padding: const EdgeInsets.all(AppPaddings.medium),
//           child: action,
//         );
//       }).toList(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class SecondaryAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SecondaryAppbar({
    super.key,
    required this.title,
    this.actions = const [],
    this.profileImageUrl,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String title;
  final List<Widget> actions;
  final String? profileImageUrl; // Optional profile image URL

  @override
  final Size preferredSize;

  @override
  State<SecondaryAppbar> createState() => _SecondaryAppbarState();
}

class _SecondaryAppbarState extends State<SecondaryAppbar> {
  @override
  Widget build(BuildContext context) {
    return BaseAppbar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.profileImageUrl != null
              ? Padding(
                  padding: const EdgeInsets.only(right: AppPaddings.small),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.profileImageUrl!),
                    radius: 16,
                  ),
                )
              : Container(),
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: CustomColors.primaryTextColor,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPaddings.medium),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Zurück',
              style: headlineSmallTextStyle(CustomColors.primaryTextColor),
            ),
          ),
        ),
      ),
      actions: widget.actions.map((action) {
        return Padding(
          padding: const EdgeInsets.all(AppPaddings.medium),
          child: action,
        );
      }).toList(),
    );
  }
}
