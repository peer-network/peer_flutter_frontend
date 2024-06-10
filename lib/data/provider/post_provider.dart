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

  Future<void> createPost(Map<String, dynamic> newPost) async {
    /*
    MutationOptions mutationOptions = MutationOptions(
      document: Mutations.createPost,
      variables: newPost,
    );

    try {
      QueryResult<Object?> queryResult =
          await gqlClient.mutate(mutationOptions);

      print(queryResult.toString());
      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      final responseFeed = queryResult.data!;

      try {
        _newsFeed.insert(
          0,
          FeedModel.fromJson(responseFeed["insert_posts_one"]),
        );
      } catch (e) {
        error = e.toString();
      }
    } else {
      var errorMap = response['error']
          as Map<String, dynamic>?; // Safely cast error to a map
      error = errorMap?['message'] ?? "An error occurred";
    }

    isLoading = false;
    notifyListeners();
    */
  }
}
