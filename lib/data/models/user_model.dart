import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/post_model.dart'; // Assuming FeedModel is also converted to a Freezed model

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? imageUrl,
    String? name,
    String? email,
    bool? verified,
    String? createdAt,
    String? updatedAt,
    String? verificationToken,
    String? bio,
    int? amountOfPosts,
    int? amountOfFollowers,
    @Default([]) List<PostModel> posts,
    @Default(false) bool isFollowing,
  }) = _UserModel;

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'].toString(),
//       name: json['name'],
//       email: json[
//           'email'], // Ensure your JSON has this or handle it if it's optional
//       verified: json['verified'] ?? false,
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       verificationToken: json['verification_token'] ?? '',
//       imageUrl: json['image_url'],
//       isPrivate: json['is_private'] ?? false,
//       bio: json['bio'] ?? 'No biography provided.',
//       // Ensure these fields are initialized correctly based on the JSON structure or defaults
//       amountOfPosts: json['amount_posts'] ?? 0,
//       amountOfFollowers: json['amount_follower'] ?? 0,
//     );
//   }
// }

// model_user.dart
// import 'package:peer_app/data/models/feed_model.dart';

// class UserModel {
//   final String id;
//   final String? imageUrl;
//   final String name;
//   final String? email;
//   final bool? verified;
//   final String? createdAt;
//   final String? updatedAt;
//   final String? verificationToken;
//   final bool? isPrivate;
//   final String? bio;
//   final List<FeedModel> posts;
//   final int? amountOfPosts;
//   final int? amountOfFollowers;
//   final bool isFollowing = false;

//   UserModel({
//     required this.id,
//     required this.name,
//     this.email,
//     this.verified,
//     this.createdAt,
//     this.updatedAt,
//     this.verificationToken,
//     this.imageUrl,
//     this.isPrivate,
//     this.bio,
//     this.amountOfPosts,
//     this.amountOfFollowers,
//     required this.posts,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     var postsJson = json['posts'] as List<dynamic>? ?? [];
//     List<FeedModel> posts = postsJson
//         .map((post) => FeedModel.fromJson(post as Map<String, dynamic>))
//         .toList();

//     return UserModel(
//       id: json['id'].toString(),
//       name: json['name'] ?? 'JSON receiced NULL',
//       email: json[
//           'email'], // Ensure your JSON has this or handle it if it's optional
//       verified: json['verified'] ?? false,
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       verificationToken: json['verification_token'] ?? '',
//       imageUrl: json['image_url'] ?? 'JSON receiced NULL',
//       isPrivate: json['is_private'] ?? false,
//       bio: json['bio'] ?? 'No biography provided.',
//       amountOfPosts: json['amount_posts'] ?? 0,
//       amountOfFollowers: json['amount_follower'] ?? 0,
//       posts: posts,
//     );
//   }
// }
