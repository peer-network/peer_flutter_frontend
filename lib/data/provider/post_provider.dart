import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class PostProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<PostModel> _posts = [];
  bool isLoading = false;
  String? error;

  List<PostModel> get newsFeed => List.unmodifiable(_posts);

  PostProvider() {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading = true;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException(queryResult.toString(), StackTrace.current)
            .handleError();
      }

      final responseFeed = queryResult.data!;

      print(responseFeed.toString());
      try {
        _posts.addAll(
          List<PostModel>.from(
            responseFeed["getAllPosts"].map(
              (postJson) {
                postJson["runtimeType"] = postJson["contentType"];

                if (!(postJson["runtimeType"] == "video")) {
                  String temp = postJson["media"];
                  postJson["media"] = [temp];
                  //(postJson["media"] == List) ? temp : [temp];
                }

                return PostModel.fromJson(postJson);
              },
            ),
          ),
        );

        // Append the dummy post with comments
        try {
          PostModel dummyPost =
              PostModel.fromJson(postWithComments); // Create dummy post

          print("Dummy post: $dummyPost");

          _posts.add(dummyPost); // Append dummy post
          print(dummyPost); // Print the appended dummy post
        } catch (e) {
          print("error in new dummy try");
        }
      } catch (e, s) {
        error = e.toString();
        CustomException(e.toString(), s).handleError();
      }
    } catch (e) {
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }
    isLoading = false;

    notifyListeners();
  }

  Future<void> createPost(Map<String, dynamic> newPost) async {}
}

final Map<String, dynamic> postWithComments = {
  "id": "post123",
  "title": "Beautiful Sunset",
  "mediaDescription": "A breathtaking view of the sunset at the beach.",
  "media": [
    "https://as2.ftcdn.net/v2/jpg/02/85/89/71/1000_F_285897164_Jj30xWSzaWVDktLZ2vqYU5fhu7HYWTrg.jpg",
    "https://as2.ftcdn.net/v2/jpg/02/85/89/71/1000_F_285897164_Jj30xWSzaWVDktLZ2vqYU5fhu7HYWTrg.jpg",
    "https://as2.ftcdn.net/v2/jpg/02/85/89/71/1000_F_285897164_Jj30xWSzaWVDktLZ2vqYU5fhu7HYWTrg.jpg",
    "https://as2.ftcdn.net/v2/jpg/02/85/89/71/1000_F_285897164_Jj30xWSzaWVDktLZ2vqYU5fhu7HYWTrg.jpg",
    "https://as2.ftcdn.net/v2/jpg/02/85/89/71/1000_F_285897164_Jj30xWSzaWVDktLZ2vqYU5fhu7HYWTrg.jpg",
  ],
  "createdAt": "2024-06-16T18:25:43.511Z",
  "isLiked": false,
  "isViewed": true,
  "isReported": false,
  "isDisliked": false,
  "isSaved": false,
  "comments": [
    {
      "id": "comment1",
      "content": "Amazing view!",
      "postId": 123,
      "userId": "user1",
      "createdAt": "2024-06-16T19:00:00.511Z",
      "user": {
        "id": "user1",
        "username": "John Doe",
        "img":
            "https://upload.wikimedia.org/wikipedia/en/6/67/Herbert_-_Family_Guy.png"
      },
      "comments": [
        {
          "id": "comment2",
          "content": "I wish I was there!",
          "postId": 123,
          "userId": "user2",
          "createdAt": "2024-06-16T19:30:00.511Z",
          "user": {
            "id": "user2",
            "username": "Jane Smith",
            "img":
                "https://upload.wikimedia.org/wikipedia/commons/9/9f/Gert_Steinb%C3%A4cker_Amadeus_Austrian_Music_Awards_2016.jpg"
          },
          "comments": [
            {
              "id": "comment3",
              "content": "Same here, looks so peaceful.",
              "postId": 123,
              "userId": "user3",
              "createdAt": "2024-06-16T20:00:00.511Z",
              "user": {
                "id": "user3",
                "username": "Alice Johnson",
                "img":
                    "https://de.web.img3.acsta.net/img/9c/3a/9c3a8132f0cb0928d9f033281efb5f93.jpg"
              },
              "comments": [
                {
                  "id": "comment4",
                  "content": "I love sunsets at the beach!",
                  "postId": 123,
                  "userId": "user4",
                  "createdAt": "2024-06-16T20:30:00.511Z",
                  "user": {
                    "id": "user4",
                    "username": "Bob Brown",
                    "img":
                        "https://upload.wikimedia.org/wikipedia/commons/a/a1/Ribera_-_Isaac_y_Jacob%2C_P001118_%28cropped%29.jpg"
                  },
                  "comments": [],
                  "isLiked": false,
                  "likeCount": 0
                }
              ],
              "isLiked": false,
              "likeCount": 0
            }
          ],
          "isLiked": false,
          "likeCount": 0
        }
      ],
      "isLiked": true,
      "likeCount": 2
    }
  ],
  "amountComments": 4,
  "amountLikes": 10,
  "amountViews": 100,
  "user": {
    "id": "0c4762a8-0a39-11ef-b7f2-e89c25791d89",
    "username": "Chris Evans",
    "img":
        "https://welcometotwinpeaks.com/wp-content/uploads/Frank-Silva-aka-Killer-BOB.jpg"
  },
  "aspectRatio": "square",
  "runtimeType": "image",
  "amountTrending": 0,
};
