import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/contacts_card.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/notification_indicator.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class ListContacts extends StatefulWidget {
  const ListContacts({super.key});

  @override
  State<ListContacts> createState() => _ListContactsState();
}

class _ListContactsState extends State<ListContacts> {
  @override
  Widget build(BuildContext context) {
    String message =
        "Hallo! Was geht? Wollte dir nur sagen dass ich Aids habe :(";

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: CustomColors.cardBorderColor,
                  width: 1,
                ),
              ),
            ),
            child: ContactsCard(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.small),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://as2.ftcdn.net/v2/jpg/05/78/61/63/1000_F_578616383_rjew0ajZan1XZ9uqaRGgw7AMLHVihzy3.jpg', // Replace with your actual image URL
                        width: 50, // Caspar // avoid conflict
                        height: 50, // Caspar // avoid conflict
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          AppPaddings.medium,
                          AppPaddings.small,
                          AppPaddings.medium,
                          AppPaddings.small),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pamela Jones',
                            style: headlineSmallTextStyle(
                                CustomColors.primaryTextColor),
                          ),
                          Text(
                            message.length > 20
                                ? '${message.substring(0, 20)}...'
                                : message,
                            style: bodyMediumTextStyle(
                                CustomColors.secondaryTextColor),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Freitag, 23:56',
                          style: bodySmallTextStyle(
                              CustomColors.secondaryTextColor),
                        ),
                        const NotificationIndicator(notificationCount: 5)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///////////////////////////////////////////////// Card 2
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: CustomColors.cardBorderColor,
                  width: 1,
                ),
              ),
            ),
            child: ContactsCard(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.small),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://img.freepik.com/premium-photo/beautiful-hot-young-girl-bikini-beach-side-sexy-hot-image-generated-midjourney-ai_921835-123.jpg?w=740', // Replace with your actual image URL
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          AppPaddings.medium,
                          AppPaddings.small,
                          AppPaddings.medium,
                          AppPaddings.small),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pamela Jones',
                            style: headlineSmallTextStyle(
                                CustomColors.primaryTextColor),
                          ),
                          const Text('Message'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Date'),
                        NotificationIndicator(notificationCount: 5)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
