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
      // variables: {
      //   'limit': AppValues.defaultLimit,
      //   'offset': AppValues.defaultLimit * page,
      // },
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

                return PostModel.fromJson(postJson);
              },
            ),
          ),
        );

        // Append the dummy post with comments
        PostModel dummyPost =
            PostModel.fromJson(postWithComments); // Create dummy post
        _posts.add(dummyPost); // Append dummy post
        print(dummyPost); // Print the appended dummy post
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
  "media":
      "https://t4.ftcdn.net/jpg/00/67/24/59/360_F_67245954_ejVa8C414CwJ9X0UadIFu1QEUjeLuFnO.jpg",
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
        "img": "https://example.com/user1.jpg"
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
            "img": "https://example.com/user2.jpg"
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
                "img": "https://example.com/user3.jpg"
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
                    "img": "https://example.com/user4.jpg"
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
