class UserModel {
  final String id;
  final String username;
  final String profileImageUrl;

  UserModel({
    required this.id,
    required this.username,
    required this.profileImageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      profileImageUrl: json['profileImageUrl'],
    );
  }
}
