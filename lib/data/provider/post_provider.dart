import 'package:flutter/foundation.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

enum PostProviderState { none, loading, loaded, error }

class PostProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  late PostModel _postModel;

  PostProviderState _state = PostProviderState.none;
  String? error;

  PostModel get post => _postModel;
  PostProviderState get state => _state;

  final List<PostModel> _posts = [];
  List<PostModel> get newsFeed => List.unmodifiable(_posts);

  Future<void> fetchPosts() async {
    _state = PostProviderState.loading;
    error = null;
    notifyListeners();

    /*
    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    
    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        _state = PostProviderState.error;
        notifyListeners();
        return;
      }

      if (queryResult.data == null) {
        error = "No data found";
        _state = PostProviderState.error;
        notifyListeners();
        return;
      }

      final responseFeed = queryResult.data!['getAllPosts'];
      _posts.clear(); // Clear the list before adding new data
      _posts.addAll(
        List<PostModel>.from(
          responseFeed.map(
            (postJson) {
              postJson["runtimeType"] = postJson["contentType"];
              return PostModel.fromJson(postJson);
            },
          ),
        ),
      );

      _state = PostProviderState.loaded;
      notifyListeners();
    } catch (e) {
      error = e.toString();
      _state = PostProviderState.error;
      notifyListeners();
    }
    isLoading = false;

    notifyListeners();*/

    try {} catch (e) {}
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
