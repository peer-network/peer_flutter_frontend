// // implement a widget that displays the chat messages in bubbles

// import 'package:flutter/material.dart';
// import 'package:peer_app/data/models/chat_message_model.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';

// class ChatBubblesAndDate extends StatelessWidget {
//   const ChatBubblesAndDate({Key? key, required this.dataCollection})
//       : super(key: key);

//   final ChatMsg dataCollection;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (dataCollection.date != null)
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               dataCollection.date!,
//               style: const TextStyle(
//                 color: CustomColors.primaryColor,
//                 fontSize: 12,
//               ),
//             ),
//           ),
//         Row(
//           mainAxisAlignment: dataCollection.isSender
//               ? MainAxisAlignment.end
//               : MainAxisAlignment.start,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(8.0),
//               margin: const EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 color: dataCollection.isSender
//                     ? CustomColors.primaryColor
//                     : CustomColors.secondaryButtonColor,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Text(
//                 dataCollection.content,
//                 style: TextStyle(
//                   color: dataCollection.isSender
//                       ? Color.fromARGB(100, 100, 100, 100)
//                       : Color.fromARGB(200, 200, 200, 200),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart'; // Make sure this path matches your project structure
import 'package:peer_app/presentation/whitelabel/colors.dart'; // Adjust if necessary

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.chatData}) : super(key: key);

  final ChatMsg chatData;

  @override
  Widget build(BuildContext context) {
    // Determine the alignment based on whether the message is sent by the user
    bool isSender = chatData.isSender;
    DateTime? dateAndTime = chatData.timestamp;
    Alignment alignment =
        isSender ? Alignment.centerRight : Alignment.centerLeft;

    // Determine the bubble color based on whether the message is sent by the user
    Color bubbleColor = isSender
        ? CustomColors.primaryColor
        : CustomColors.secondaryButtonColor;
    Color textColor = isSender ? Colors.white : Colors.black;

    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          chatData.content,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
