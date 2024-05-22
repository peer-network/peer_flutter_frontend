// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/new_dummy_response/new_dummy_feed_data.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class PostProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<PostModel> _posts = [];
  bool isLoading = false;
  String? error;
  int page = 0;



  List<PostModel> get newsFeed => List.unmodifiable(_posts);

  PostProvider() {
    fetchPosts();
  }
  /*
  void fetchMore() {
    page++
    fetchNews();
  }
  */

  void refresh() {
    page = 0;
    _posts.clear();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading = true;
    error = null;
    notifyListeners();

    List<Map<String, dynamic>> dummyPosts = dummyFeedData;

    for (var postJson in dummyPosts) {
      var postModel = PostModel.fromJson(postJson);
      _posts.add(postModel);
    }

    isLoading = false;
    notifyListeners();

    /*
    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
      variables: {
        'limit': AppValues.defaultLimit,
        'offset': AppValues.defaultLimit * page,
      },
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
      try {
        _newsFeed.addAll(
          List<FeedModel>.from(
            responseFeed["posts"]!.map(
              (x) => FeedModel.fromJson(x),
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
    */
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
        CustomException(e.toString(), StackTrace.current).handleError();
      }
    } catch (e) {
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }
    notifyListeners();
    */
  }
}
