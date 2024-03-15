import 'package:flutter/material.dart';
import 'package:peer_app/data/dummy_response/dummy_chat_messages_by_chat_id.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import '../../../../data/models/chat_message_model.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_written_out_date_text_widget.dart';
import 'package:peer_app/data/services/dio_client.dart';

// unterteilen in ChatHistoryView und ChatHistoryViewFutureBuilder
class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key, required this.chatId});

  final String chatId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChatMessageModel>>(
      future:
          ChatBuilderRepository(currentUserId: '1').fetchChatHistory(chatId),
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

class ChatBuilderRepository {
  // TODO keine userId
  final String currentUserId;
  final DioClient _dioClient = DioClient();

  ChatBuilderRepository({required this.currentUserId});

  Future<List<ChatMessageModel>> fetchChatHistory(
    String chatId, // e.g. "1", "2", "3"
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // response = _dioClient.get(ApiEndpoints.chat, queryParameters: {'chatId': chatId});

      final response = dummy_get_chat_by_chatId(chatId);
      if (response.isEmpty) {
        throw Exception('Chat history not found for chatId: $chatId');
      }

      List<ChatMessageModel> chatHistory =
          response["messages"].map<ChatMessageModel>((x) {
        return ChatMessageModel.fromJson(
            x as Map<String, dynamic>, currentUserId);
      }).toList();
      return chatHistory;
    } catch (e) {
      throw Exception('Failed to fetch chat history: $e');
    }
  }
}
