// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class NewsFeedProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  List<FeedModel> _newsFeed = [];
  bool isLoading = false;
  String? error;
  // TODO: implement pagination

  // init with fetchNews
  NewsFeedProvider() {
    fetchNews();
  }

  // toogle like on feed by id calls models toogle like and api call
  void toggleLike(String id) {
    // final feed = _newsFeed.firstWhere((element) => element.id == id);
    // feed.toggleLike();

    notifyListeners();
  }

  List<FeedModel> get newsFeed => _newsFeed;

  Future<void> fetchNews() async {
    isLoading = true;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);
      print(queryResult);

      // TODO: implement pagination
      // TODO implement error handling

      final responseFeed = queryResult.data!;
      try {
        _newsFeed = List<FeedModel>.from(
            responseFeed["posts"]!.map((x) => FeedModel.fromJson(x)));
      } catch (e, s) {
        print('Error parsing news feed: $e, $s');
      }
    } catch (e) {
      error = e.toString();
      print(error);
    }
    isLoading = false;

    notifyListeners();
  }
}
