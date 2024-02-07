// news_provider.dart
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/services/dio_client.dart';

class NewsFeedProvider with ChangeNotifier {
  final DioClient _dioClient = DioClient();
  List<dynamic> _news = [];

  List<dynamic> get news => _news;

  Future<void> fetchNews() async {
    try {
      final response = await _dioClient.get('/news');
      // Model the response
      _news = response.data;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
