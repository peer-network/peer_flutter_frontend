// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/mutations.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class NewsFeedProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<FeedModel> _newsFeed = [];
  bool isLoading = false;
  String? error;
  int page = 0;

  List<FeedModel> get newsFeed => _newsFeed;

  NewsFeedProvider() {
    fetchNews();
  }

  void fetchMore() {
    page++;
    fetchNews();
  }

  void refresh() {
    page = 0;
    _newsFeed.clear();
    fetchNews();
  }

  Future<void> fetchNews() async {
    isLoading = true;
    error = null;
    notifyListeners();

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
      print(queryResult);

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
  }

  Future<void> createPost(Map<String, dynamic> newPost) async {
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
  }
}
