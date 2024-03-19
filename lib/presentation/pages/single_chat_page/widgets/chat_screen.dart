// import 'package:flutter/material.dart';
// import 'package:peer_app/data/models/chat_message_model.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_text_input.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_navbar.dart';
// // Import your ChatHistoryView and PillShapedTextInput widgets here

// class ChatScreen extends StatelessWidget {
//   // Assuming you have chatHistory data available here
//   final List<ChatMessageModel> chatHistory;

//   ChatScreen({Key? key, required this.chatHistory}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat'),
//         // Other AppBar properties as needed
//       ),
//       // Inside ChatScreen's build method
//       body: Column(
//         children: [
//           Flexible(
//             child: ChatHistoryView(
//               chatHistory: chatHistory,
//               context: context,
//             ),
//           ),
//           // MessagingBottomNavbar(), // Use the updated MessagingBottomNavbar here
//         ],
//       ),
//     );
//   }
// }
