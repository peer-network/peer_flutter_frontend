// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/dummy_response/dummy_feeds.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/services/dio_client.dart';

class NewsFeedProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<dynamic> _newsFeed = [];
  bool isLoading = false;
  String? error;

  // TODO: implement pagination

  // init with fetchNews
  NewsFeedProvider() {
    fetchNews();
  }

  List<dynamic> get newsFeed => _newsFeed;

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
      const response = dummyFeeds;
      // Model the response
      _newsFeed = List<FeedModel>.from(
          response["feeds"]!.map((x) => FeedModel.fromJson(x)));
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;

    notifyListeners();
  }
}
