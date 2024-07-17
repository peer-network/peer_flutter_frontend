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
        CustomException(queryResult.exception.toString(), StackTrace.current).handleError();
        isLoading = false;
        notifyListeners();
        return;
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException(queryResult.toString(), StackTrace.current).handleError();
        isLoading = false;
        notifyListeners();
        return;
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
                  postJson["media"] = (postJson["media"] == List) ? temp : [temp];
                }

                return PostModel.fromJson(postJson);
              },
            ),
          ),
        );

        // Adding dummy post
        try {
          PostModel dummyPost = PostModel.fromJson(postWithComments);
          print("Dummy post: $dummyPost");
          _posts.add(dummyPost);
        } catch (e) {
          print("Error creating dummy post: $e");
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

  // Dummy post data removed for brevity
    final Map<String, dynamic> postWithComments = {
    "id": "post123",
    "title": "Beautiful Sunset",
    "mediaDescription": "A breathtaking view of the sunset at the beach.",
    "content": "Lorem ipsum dolor sit amet.",
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
    "gemsTotal" : 123,
    "gemsToday" : 123,
    "gemsAllTimeHigh" : 123,
    "gemsLikes" : 123,
    "gemsViews" : 123,
    "gemsShares" : 123,
    "likesPerDay": {
      DateTime(2024,06,21,00,00,00): 117.40,
      DateTime(2024,06,20,00,00,00): 117.40,
      DateTime(2024,06,19,00,00,00): 96.80,
      DateTime(2024,06,18,00,00,00): 83.20,
      DateTime(2024,06,17,00,00,00): 111.40,
      DateTime(2024,06,16,00,00,00): 104.60,
      DateTime(2024,06,15,00,00,00): 109.00,
      DateTime(2024,06,14,00,00,00): 116.20,
      DateTime(2024,06,13,00,00,00): 108.80,
      DateTime(2024,06,12,00,00,00): 102.00,
      DateTime(2024,06,11,00,00,00): 87.00,
      DateTime(2024,06,10,00,00,00): 117.80,
      DateTime(2024,06,09,00,00,00): 100.40,
      DateTime(2024,06,08,00,00,00): 117.20,
      DateTime(2024,06,07,00,00,00): 112.20,
      DateTime(2024,06,06,00,00,00): 93.20,
      DateTime(2024,06,05,00,00,00): 84.40,
      DateTime(2024,06,04,00,00,00): 119.40,
      DateTime(2024,06,03,00,00,00): 113.80,
      DateTime(2024,06,02,00,00,00): 100.80,
      DateTime(2024,06,01,00,00,00): 117.40,
      DateTime(2024,05,31,00,00,00): 88.40,
      DateTime(2024,05,30,00,00,00): 94.40,
      DateTime(2024,05,29,00,00,00): 116.80,
      DateTime(2024,05,28,00,00,00): 92.80,
      DateTime(2024,05,27,00,00,00): 119.60,
      DateTime(2024,05,26,00,00,00): 80.60,
      DateTime(2024,05,25,00,00,00): 105.60,
      DateTime(2024,05,24,00,00,00): 110.40,
      DateTime(2024,05,23,00,00,00): 84.20,
      DateTime(2024,05,22,00,00,00): 118.20,
      DateTime(2024,05,21,00,00,00): 112.80,
      DateTime(2024,05,20,00,00,00): 119.20,
      DateTime(2024,05,19,00,00,00): 86.60,
      DateTime(2024,05,18,00,00,00): 88.80,
      DateTime(2024,05,17,00,00,00): 93.20,
      DateTime(2024,05,16,00,00,00): 119.20,
      DateTime(2024,05,15,00,00,00): 86.40,
      DateTime(2024,05,14,00,00,00): 81.20,
      DateTime(2024,05,13,00,00,00): 92.60,
      DateTime(2024,05,12,00,00,00): 81.80,
      DateTime(2024,05,11,00,00,00): 90.40,
      DateTime(2024,05,10,00,00,00): 92.00,
      DateTime(2024,05,09,00,00,00): 101.80,
      DateTime(2024,05,08,00,00,00): 114.20,
      DateTime(2024,05,07,00,00,00): 101.80,
      DateTime(2024,05,06,00,00,00): 93.20,
      DateTime(2024,05,05,00,00,00): 93.60,
      DateTime(2024,05,04,00,00,00): 99.80,
      DateTime(2024,05,03,00,00,00): 117.20,
      DateTime(2024,05,02,00,00,00): 89.80,
      DateTime(2024,05,01,00,00,00): 116.60,
      DateTime(2024,04,30,00,00,00): 109.20,
      DateTime(2024,04,29,00,00,00): 106.20,
      DateTime(2024,04,28,00,00,00): 88.20,
      DateTime(2024,04,27,00,00,00): 103.40,
      DateTime(2024,04,26,00,00,00): 109.60,
      DateTime(2024,04,25,00,00,00): 108.40,
      DateTime(2024,04,24,00,00,00): 116.80,
      DateTime(2024,04,23,00,00,00): 119.40,
      DateTime(2024,04,22,00,00,00): 111.00
      },
  };

}

