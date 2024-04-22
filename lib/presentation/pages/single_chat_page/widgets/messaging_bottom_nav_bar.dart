// // Bottom navigation bar for messaging
// // This is a stateful widget that contains a text input field and a send button.

// import 'package:flutter/material.dart';
// import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
// import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class MessagingBottomNavBar extends StatefulWidget {
//   const MessagingBottomNavBar.messagingBottomNavBar({Key? key})
//       : super(key: key);

//   @override
//   State<MessagingBottomNavBar> createState() => _MessagingBottomNavBarState();
// }

// class _MessagingBottomNavBarState extends State<MessagingBottomNavBar> {
//   final TextEditingController _controller = TextEditingController();
//   bool _isSendButtonVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(_onTextChanged);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _onTextChanged() {
//     setState(() {
//       _isSendButtonVisible = _controller.text.isNotEmpty;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BaseBottomNavigationBar(
//       height: null,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: AppPaddings.small, vertical: AppPaddings.tiny),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: InputFieldComponent(
//                 controller: _controller,
//                 minLines: 1,
//                 maxLines: 4,
//                 hintText: "Type a message",
//               ),
//             ),
//             if (_isSendButtonVisible)
//               IconButton(
//                 icon: Icon(Icons.send, color: Theme.of(context).primaryColor),
//                 onPressed: () {
//                   //TODO: Implement send functionality here
//                   print("Sending: ${_controller.text}");
//                 },
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Bottom navigation bar for messaging
// This is a stateful widget that contains a text input field and a send button.

import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/chat_provider.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class MessagingBottomNavBar extends StatefulWidget {
  const MessagingBottomNavBar.messagingBottomNavBar({Key? key})
      : super(key: key);

  @override
  State<MessagingBottomNavBar> createState() => _MessagingBottomNavBarState();
}

class _MessagingBottomNavBarState extends State<MessagingBottomNavBar> {
  final TextEditingController _controller = TextEditingController();
  bool _isSendButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isSendButtonVisible = _controller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseBottomNavigationBar(
      height: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.tiny),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InputFieldComponent(
                controller: _controller,
                minLines: 1,
                maxLines: 4,
                hintText: "Type a message",
              ),
            ),
            if (_isSendButtonVisible)
              IconButton(
                icon: Icon(Icons.send, color: Theme.of(context).primaryColor),
                onPressed: () {
                  //TODO: Implement send functionality here
                  print("Sending: ${_controller.text}");
                  sendTextMessage(
                    "1e05f953-3f9b-488b-acf2-8486d37f6009", // chatId
                    "c05a6e6e-5365-40ca-b2d5-29af9f1cb1c6", // creatorId
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

//////////////////////// START //////////////////////////
  void sendTextMessage(String chatId, String creatorId) {
    final chatProvider = Provider.of<ChatProvider>(context, listen: false);
    chatProvider.createChatMessage(
      {"content": _controller.text, "chatId": chatId, "senderId": creatorId},
    ).then((_) {
      if (chatProvider.error != null) {
        CustomToast.showErrorToast(chatProvider.error!);
      } else {
        CustomToast.showSuccessToast("Chat Message erfolgreich erstellt");
      }
    });
  }
//////////////////////// END //////////////////////////
}
