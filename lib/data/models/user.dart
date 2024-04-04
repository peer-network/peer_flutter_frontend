import 'package:peer_app/data/models/feed_model.dart';

class UserModel {
  final String id;
  final String? imageUrl;
  final String username;
  final String email;
  final bool verified;
  final String createdAt;
  final String updatedAt;
  final String verificationToken;
  // TODO remove hardcode
  final String bio =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus nec nunc tincidunt fermentum. Nullam nec purus nec nunc tincidunt fermentum.';
  final List<FeedModel> posts = [];
  final int amountOfPosts = 0;
  final int amountOfFollowers = 0;

  final bool isFollowing = false;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.verified,
    required this.createdAt,
    required this.updatedAt,
    required this.verificationToken,
    this.imageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      username: json['username'],
      email: json['email'],
      verified: json['verified'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      verificationToken: json['verification_token'],
    );
  }
}


// class UserModel {
//   final String id;
//   final String username;
//   final String profileImageUrl;
//   // additional fields
//   final String? bio;
//   final int? amountOfPosts;
//   final int? amountOfFollowers;
//   final int? amountOfFollowing;
//   final List<FeedModel> posts;
//   bool? isFollowing;

//   toogleFollow() {
//     if (isFollowing == null) {
//       isFollowing = true;
//     } else {
//       isFollowing = !isFollowing!;
//     }
//   }

//   UserModel({
//     required this.id,
//     required this.username,
//     required this.profileImageUrl,
//     this.bio,
//     this.amountOfPosts,
//     this.amountOfFollowers,
//     this.amountOfFollowing,
//     this.posts = const [],
//     this.isFollowing,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'],
//       username: json['username'],
//       profileImageUrl: json['profile_image_url'],
//       bio: json['bio'],
//       amountOfPosts: json['amount_of_posts'],
//       amountOfFollowers: json['amount_of_followers'],
//       amountOfFollowing: json['amount_of_following'],
//       isFollowing: json['is_following'],
//       posts: json['posts'] != null
//           ? json['posts']
//               .map<FeedModel>((post) => FeedModel.fromJson(post))
//               .toList()
//           : [],
//     );
//   }
// }
