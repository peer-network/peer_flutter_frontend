import 'package:peer_app/data/models/user.dart';

class ContactsModel {
  // first level depth
  final String id;
  final String? lastMessage;
  final DateTime? lastMessageTime;
  final int? notificationCount;
  // second level depth
  final UserModel contact; // id, username, profileImageUrl

  ContactsModel({
    // first level depth
    required this.id,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.notificationCount,
    // second level depth
    required this.contact, // id, username, profileImageUrl
  });

  factory ContactsModel.fromJson(Map<String, dynamic> json) {
    return ContactsModel(
      // first level depth
      id: json['id'],
      lastMessage: json['lastMessage'],
      lastMessageTime: DateTime.parse(json['lastMessageTime']),
      notificationCount: json['notificationCount'],
      // second level depth
      contact:
          UserModel.fromJson(json['contact']), // id, username, profileImageUrl
    );
  }
}
