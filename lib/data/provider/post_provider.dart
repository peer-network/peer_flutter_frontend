import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';
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
  }

  Future<void> fetchPostById(String postId) async {
    _state = PostProviderState.loading;
    error = null;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
      variables: {'postId': postId},
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

      final postData = queryResult.data!['post'];
      _postModel = PostModel.fromJson(postData);
      _state = PostProviderState.loaded;
      notifyListeners();
    } catch (e) {
      error = e.toString();
      _state = PostProviderState.error;
      notifyListeners();
    }
  }

  Future<void> createPost(Map<String, dynamic> newPost) async {}
}

Map<String, dynamic> postWithComments = {
    // Add the content of postWithComments here
};
