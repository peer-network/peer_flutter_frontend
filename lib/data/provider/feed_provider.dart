// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_feeds.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/services/dio_client.dart';
import 'package:peer_app/presentation/whitelabel/endpoints.dart';

class NewsFeedProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
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
    final feed = _newsFeed.firstWhere((element) => element.id == id);
    feed.toggleLike();
    _dioClient.post(ApiEndpoints.like, data: {"id": id});
    notifyListeners();
  }

  List<FeedModel> get newsFeed => _newsFeed;

  // TODO: implement caching
  // caching options
  // network only
  // cache only
  // cache and network

  Future<void> fetchNews() async {
    isLoading = true;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.newsFeed);
      // TODO replace trough real api call
      await Future.delayed(const Duration(seconds: 2));
      Map<String, dynamic> responseFeed =
          dummyFeeds["data"] as Map<String, dynamic>;
      // Model the response
      try {
        _newsFeed = List<FeedModel>.from(
            responseFeed["feeds"]!.map((x) => FeedModel.fromJson(x)));
      } catch (e, s) {
        print('Error parsing news feed: $e, $s');
      }
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
