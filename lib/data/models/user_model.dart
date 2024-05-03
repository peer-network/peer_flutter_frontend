// // import 'package:peer_app/data/models/feed_model.dart';

// // class UserModel {
// //   final String id;
// //   final String? imageUrl;
// //   final String name;
// //   final String? email;
// //   final bool? verified;
// //   final String? createdAt;
// //   final String? updatedAt;
// //   final String? verificationToken;
// //   // TODO remove hardcode
// //   final String bio =
// //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus nec nunc tincidunt fermentum. Nullam nec purus nec nunc tincidunt fermentum.';
// //   final List<FeedModel> posts = [];
// //   final int amountOfPosts = 0;
// //   final int amountOfFollowers = 0;
// //   final bool isFollowing = false;
// //   final bool? isPrivate;

// //   UserModel({
// //     required this.id,
// //     required this.name,
// //     required this.email,
// //     required this.verified,
// //     required this.createdAt,
// //     required this.updatedAt,
// //     required this.verificationToken,
// //     this.imageUrl,
// //     required this.isPrivate,
// //   });

// //   factory UserModel.fromJson(Map<String, dynamic> json) {
// //     return UserModel(
// //       id: json['id'].toString(),
// //       name: json['name'],
// //       email: json['email'],
// //       verified: json['verified'],
// //       createdAt: json['created_at'],
// //       updatedAt: json['updated_at'],
// //       verificationToken: json['verification_token'],
// //       imageUrl: json['image_url'],
// //       isPrivate: json['is_private'],
// //     );
// //   }
// // }

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
//   // TODO remove hardcode
//   final String bio =
//       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus nec nunc tincidunt fermentum. Nullam nec purus nec nunc tincidunt fermentum.';
//   final List<FeedModel> posts = [];
//   final int amountOfPosts = 0;
//   final int amountOfFollowers = 0;
//   final bool isFollowing = false;
//   final bool? isPrivate;

//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.verified,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.verificationToken,
//     this.imageUrl,
//     required this.isPrivate,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'].toString(),
//       name: json['name'] ?? 'Unknown Name',
//       email: json['email'],
//       verified: json['verified'] ?? false,
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       verificationToken: json['verification_token'] ?? '',
//       imageUrl: json['image_url'],
//       isPrivate: json['is_private'] ?? false,
//     );
//   }
// }

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
//   // TODO remove hardcode
//   final String bio =
//       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus nec nunc tincidunt fermentum. Nullam nec purus nec nunc tincidunt fermentum.';
//   final List<FeedModel> posts = [];
//   final int amountOfPosts = 0;
//   final int amountOfFollowers = 0;
//   final bool isFollowing = false;
//   final bool? isPrivate;

//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.verified,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.verificationToken,
//     this.imageUrl,
//     required this.isPrivate,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'].toString(),
//       name: json['name'],
//       email: json['email'],
//       verified: json['verified'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       verificationToken: json['verification_token'],
//       imageUrl: json['image_url'],
//       isPrivate: json['is_private'],
//     );
//   }
// }

import 'package:peer_app/data/models/feed_model.dart';

class UserModel {
  final String id;
  final String? imageUrl;
  final String name;
  final String? email;
  final bool? verified;
  final String? createdAt;
  final String? updatedAt;
  final String? verificationToken;
  // TODO remove hardcode
  final String? bio;
  final List<FeedModel> posts = [];
  final int? amountOfPosts;
  final int? amountOfFollowers;
  final bool isFollowing = false;
  final bool? isPrivate;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.verified,
    required this.createdAt,
    required this.updatedAt,
    required this.verificationToken,
    this.imageUrl,
    required this.isPrivate,
    this.bio,
    this.amountOfPosts,
    this.amountOfFollowers,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      name: json['name'],
      email: json[
          'email'], // Ensure your JSON has this or handle it if it's optional
      verified: json['verified'] ?? false,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      verificationToken: json['verification_token'] ?? '',
      imageUrl: json['image_url'],
      isPrivate: json['is_private'] ?? false,
      bio: json['bio'] ?? 'No biography provided.',
      // Ensure these fields are initialized correctly based on the JSON structure or defaults
      amountOfPosts: json['amount_posts'] ?? 0,
      amountOfFollowers: json['amount_follower'] ?? 0,
    );
  }
  // factory UserModel.fromJson(Map<String, dynamic> json) {
  //   List<dynamic> postsJson = json['posts'] ?? [];
  //   List<FeedModel> posts =
  //       postsJson.map((postJson) => FeedModel.fromJson(postJson)).toList();

  //   return UserModel(
  //     id: json['id'].toString(),
  //     name: json['name'],
  //     email: json['email'],
  //     verified: json['verified'] ?? false,
  //     createdAt: json['created_at'],
  //     updatedAt: json['updated_at'],
  //     verificationToken: json['verification_token'] ?? '',
  //     imageUrl: json['image_url'],
  //     isPrivate: json['is_private'] ?? false,
  //     bio: json['bio'] ?? 'No biography provided.',
  //     amountOfPosts: json['amount_posts'] ?? 0,
  //     amountOfFollowers: json['amount_follower'] ?? 0,
  //   )..posts.addAll(
  //       posts); // Initialize the 'posts' list after creating the UserModel instance
  // }
}
