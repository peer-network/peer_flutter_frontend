import 'package:peer_app/data/models/user_model.dart';

class ContactModel {
  final String id;
  final UserModel contact;

  ContactModel({
    required this.id,
    required this.contact,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      id: json['id'],
      contact: UserModel.fromJson(json['contact']),
    );
  }
}
