import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

enum PostPerformanceState { none, loading, loaded, error }

class PostPerformanceScreenProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  late PostPerformanceModel _postPerformance;
  PostPerformanceState _state = PostPerformanceState.none;
  String? error;

  PostPerformanceModel get postPerformance => _postPerformance;
  PostPerformanceState get state => _state;

  PostPerformanceScreenProvider() {
    fetchPostPerformance();
  }

  Future<void> fetchPostPerformance() async {
    _state = PostPerformanceState.loading;
    error = null;
    notifyListeners();

    final queryOption = QueryOptions(
        document: gql(r'''
          query GetPostPerformance($user_id: Int!) {
            postPerformance(user_id: $user_id) {
              post_id
              user_id
              image_urls
              text
              created_at
              gems_total
              gems_today
              gems_all_time_high
              gems_likes
              gems_views
              gems_shares
              likes_per_day
            }
          }
        '''),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          'user_id': 2, // TODO: Replace with the actual user ID
        });

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
        _state = PostPerformanceState.error;
        notifyListeners();
        return;
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException("No data found", StackTrace.current).handleError();
        _state = PostPerformanceState.error;
        notifyListeners();
        return;
      }

      final postPerformanceData = queryResult.data!['postPerformance'];
      if (postPerformanceData != null) {
        _postPerformance = PostPerformanceModel.fromJson(postPerformanceData);
        _state = PostPerformanceState.loaded;
      } else {
        error = "No post performance data found";
        CustomException("No post performance data found", StackTrace.current).handleError();
        _state = PostPerformanceState.error;
      }
    } catch (e) {
      _state = PostPerformanceState.error;
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }

    notifyListeners();
  }
}
