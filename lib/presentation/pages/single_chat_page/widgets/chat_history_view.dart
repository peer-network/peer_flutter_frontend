// import 'package:flutter/material.dart';
// import 'package:peer_app/data/provider/single_chat_provider.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';
// import 'package:provider/provider.dart';

// import '../../../../data/models/chat_message_model.dart';
// import 'package:peer_app/presentation/whitelabel/components/date/formatted_written_out_date_text_widget.dart';

// class ChatHistoryView extends StatelessWidget {
//   const ChatHistoryView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     SingleChatProvider singleChatMessagesProvider =
//         Provider.of<SingleChatProvider>(context);

//     if (singleChatMessagesProvider.isLoading) {
//       return LoadingComponent(
//           onRefresh: singleChatMessagesProvider.fetchChatHistory);
//     } else if (singleChatMessagesProvider.error != null) {
//       return ErrorComponent(error: singleChatMessagesProvider.error!);
//     } else {
//       return Container(
//         height: MediaQuery.of(context).size.height -
//             kToolbarHeight -
//             kBottomNavigationBarHeight,
//         color: CustomColors.backgroundColor,
//         child: _buildChatList(singleChatMessagesProvider.chatHistory, context),
//       );
//     }
//   }

//   Widget _buildChatList(
//       List<ChatMessageModel> chatHistory, BuildContext context) {
//     List<Widget> children = [];
//     DateTime? lastDate;

//     for (var i = 0; i < chatHistory.length; i++) {
//       final message = chatHistory[i];
//       final messageDate = DateTime(message.timestamp.year,
//           message.timestamp.month, message.timestamp.day);

//       if (lastDate == null || messageDate.isAfter(lastDate)) {
//         // Use FormattedDateTextWidget for date headers
//         children.add(
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
//             child: Center(
//               child: FormattedWrittenOutDateTextWidget(
//                 dateTime: messageDate,
//                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                     color:
//                         CustomColors.secondaryTextColor), // Customize as needed
//               ),
//             ),
//           ),
//         );
//         lastDate = messageDate;
//       }

//       children.add(ChatBubble(chatData: message));
//     }

//     return ListView(children: children);
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/single_chat_provider.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chat_message_model.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_written_out_date_text_widget.dart';

import 'package:peer_app/data/dummy_response/dummy_chat.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChatMessageModel>>(
      future: ChatRepository(currentUserId: 'user_123')
          .fetchChatHistory(), // Call your fetch method here
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingComponent(); // Show loading while the future is incomplete
        } else if (snapshot.hasError) {
          return ErrorComponent(
              error: snapshot.error
                  .toString()); // Show error if something went wrong
        } else if (snapshot.hasData) {
          // Data is loaded, build your list
          return Container(
            height: MediaQuery.of(context).size.height -
                kToolbarHeight -
                kBottomNavigationBarHeight,
            color: CustomColors.backgroundColor,
            child: _buildChatList(snapshot.data!, context),
          );
        } else {
          // Handle the case where snapshot.data is null
          return const ErrorComponent(error: 'No data available');
        }
      },
    );
  }

  Widget _buildChatList(
      List<ChatMessageModel> chatHistory, BuildContext context) {
    List<Widget> children = [];
    DateTime? lastDate;

    for (var i = 0; i < chatHistory.length; i++) {
      final message = chatHistory[i];
      final messageDate = DateTime(message.timestamp.year,
          message.timestamp.month, message.timestamp.day);

      if (lastDate == null || messageDate.isAfter(lastDate)) {
        // Use FormattedDateTextWidget for date headers
        children.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: Center(
              child: FormattedWrittenOutDateTextWidget(
                dateTime: messageDate,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color:
                        CustomColors.secondaryTextColor), // Customize as needed
              ),
            ),
          ),
        );
        lastDate = messageDate;
      }

      children.add(ChatBubble(chatData: message));
    }

    return ListView(children: children);
  }
}

class ChatRepository {
  // TODO keine userId
  final String currentUserId;
  final DioClient _dioClient = DioClient();

  ChatRepository({required this.currentUserId});

  Future<List<ChatMessageModel>> fetchChatHistory(

      // String chatId, ("1", "2", "3")
      ) async {
    try {
      await Future.delayed(
          const Duration(seconds: 2)); // Simulating network delay
      // Assuming dummyChat is a List<Map<String, dynamic>> where each Map is a chat session
      // and you are interested in the first session's messages for the sake of this example.

      // response = _dioClient.get(ApiEndpoints.chat, queryParameters: {'chatId': chatId});
      // respomse = dummy_get_chat_by_chatId(chatId);
      const response = dummyChat; // Replace with actual network call if needed
      List<ChatMessageModel> chatHistory =
          response[0]["messages"].map<ChatMessageModel>((x) {
        return ChatMessageModel.fromJson(
            x as Map<String, dynamic>, currentUserId);
      }).toList();
      return chatHistory;
    } catch (e) {
      throw Exception('Failed to fetch chat history: $e');
    }
  }
}
