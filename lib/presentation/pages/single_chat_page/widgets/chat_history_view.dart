// // // ChatHistoryView
// // // Checks the chat messages for their date and affectively
// // // displays them grouped after date

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:peer_app/data/models/chat_message_model.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class ChatHistoryView extends StatelessWidget {
//   const ChatHistoryView({
//     super.key,
//     required this.chatHistory,
//   });

//   final List<ChatMessageModel> chatHistory;

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> children = [];
//     String? lastDateString;

//     // chatHistory is a list of ChatMessageModel

//     for (var i = 0; i < chatHistory.length; i++) {
//       final message = chatHistory[i];
//       // print the message with description
//       print('Message>>>>>>>>>>>>>>>>>>>>>: $message');
//       // Parse the timestamp to DateTime only for comparison
//       final messageDate = DateTime.parse(message.createdAt as String);
//       final messageDateString = DateFormat('yyyy-MM-dd').format(messageDate);

//       if (lastDateString == null || messageDateString != lastDateString) {
//         children.add(
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
//             child: Center(
//               child: Text(
//                 FormattedDate(message.createdAt)
//                     .getFormattedDate(formatType: DateFormatType.noTime),
//                 style: Theme.of(context)
//                     .textTheme
//                     .bodyLarge!
//                     .copyWith(color: CustomColors.secondaryTextColor),
//               ),
//             ),
//           ),
//         );
//         lastDateString = messageDateString;
//       }

//       children.add(ChatBubble(chatData: message));
//     }

//     return ListView.builder(
//         itemBuilder: (context, index) {
//           return children[index];
//         },
//         itemCount: children.length);
//   }
// }

// // ChatHistoryView
// // Checks the chat messages for their date and affectively
// // displays them grouped after date

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({
    super.key,
    required this.chatHistory,
  });

  final List<ChatMessageModel> chatHistory;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    String? lastDateString;

    // chatHistory is a list of ChatMessageModel

    for (var i = 0; i < chatHistory.length; i++) {
      final chatMessage = chatHistory[i];
      // print the message with description
      print('Message>>>>>>>>>>>>>>>>>>>>>: $chatMessage');
      // Parse the timestamp to DateTime only for comparison

      //////// CHANGE THIS CODE //////// FOR SHOWING DATE POP UPS IN THE CHAT ////////
      // final messageDate = DateTime.parse(chatMessage.createdAt as String);
      // final messageDateString = DateFormat('yyyy-MM-dd').format(messageDate);

      // if (lastDateString == null || messageDateString != lastDateString) {
      //   children.add(
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
      //       child: Center(
      //         child: Text(
      //           FormattedDate(chatMessage.createdAt)
      //               .getFormattedDate(formatType: DateFormatType.noTime),
      //           style: Theme.of(context)
      //               .textTheme
      //               .bodyLarge!
      //               .copyWith(color: CustomColors.secondaryTextColor),
      //         ),
      //       ),
      //     ),
      //   );
      //   lastDateString = messageDateString;
      // }

      children.add(ChatBubble(chatData: chatMessage));
    }

    return ListView.builder(
        itemBuilder: (context, index) {
          return children[index];
        },
        itemCount: children.length);
  }
}
