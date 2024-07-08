// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:peer_app/data/models/post_performance_model.dart';
// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/services/gql_client_service.dart';

// import 'package:flutter/foundation.dart';
// import 'package:peer_app/data/graphql/queries.dart';


// enum PostPerformanceState { none, loading, loaded, error }

// class PostPerformanceProvider with ChangeNotifier {
//   final gqlClient = GraphQLClientSingleton();
//   late PostPerformanceModel _postPerformance;
//   PostPerformanceState _state = PostPerformanceState.none;
//   String? error;

//   PostPerformanceModel get postPerformance => _postPerformance;
//   PostPerformanceState get state => _state;

//   PostPerformanceProvider() {
//     fetchPostPerformance();
//   }

//   Future<void> fetchPostPerformance() async {
//     _state = PostPerformanceState.loading;
//     error = null;
//     notifyListeners();

//     final queryOption = QueryOptions(
//         document: gql(r'''
//           query GetPostPerformance($user_id: Int!) {
//             postPerformance(user_id: $user_id) {
//               post_id
//               user_id
//               image_urls
//               post_text
//               created_at
//               gems_total
//               gems_today
//               gems_all_time_high
//               gems_likes
//               gems_views
//               gems_shares
//               likes_per_day
//             }
//           }
//         '''),
//         fetchPolicy: FetchPolicy.networkOnly,
//         variables: {
//           'post_id': 2, // TODO: Replace with the actual user ID
//         });

//     try {
//       QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

//       if (queryResult.hasException) {
//         error = queryResult.exception.toString();
//         CustomException(queryResult.exception.toString(), StackTrace.current)
//             .handleError();
//         _state = PostPerformanceState.error;
//         notifyListeners();
//         return;
//       }

//       if (queryResult.data == null) {
//         error = "No data found";
//         CustomException("No data found", StackTrace.current).handleError();
//         _state = PostPerformanceState.error;
//         notifyListeners();
//         return;
//       }

//       final postPerformanceData = queryResult.data!['postPerformance'];
//       if (postPerformanceData != null) {
//         _postPerformance = PostPerformanceModel.fromJson(postPerformanceData);
//         _state = PostPerformanceState.loaded;
//       } else {
//         error = "No post performance data found";
//         CustomException("No post performance data found", StackTrace.current).handleError();
//         _state = PostPerformanceState.error;
//       }
//     } catch (e) {
//       _state = PostPerformanceState.error;
//       error = e.toString();
//       CustomException(e.toString(), StackTrace.current).handleError();
//     }

//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/data/dummy_response/dummy_post_performance.dart';

enum PostPerformanceState { none, loading, loaded, error }

class PostPerformanceProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  late PostPerformanceModel _postPerformance;
  PostPerformanceState _state = PostPerformanceState.none;
  String? error;

  PostPerformanceModel get postPerformance => _postPerformance;
  PostPerformanceState get state => _state;

  PostPerformanceProvider() {
    fetchPostPerformance();
  }

  Future<void> fetchPostPerformance() async {
    _state = PostPerformanceState.loading;
    error = null;
    notifyListeners();

    try {
      // Use the dummy data
      //_postPerformance = PostPerformanceModel.fromJson(dummyPostPerformance);
      _postPerformance = PostPerformanceModel(
    postId: 12345,
    userId: 67890,
    imageUrls: [
    "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
    "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
    "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
    "https://www.lightstalking.com/wp-content/uploads/stephanie-leblanc-JLMEZxBcXCU-unsplash.jpg",
  ],
    postText: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
    createdAt: DateTime.utc(2024,04,22,12,34,56)
      ,
    gemsTotal: 8970,
    gemsToday: 69,
    gemsAllTimeHigh: 420,
    gemsLikes: 1797,
    gemsViews: 2565,
    gemsShares: 857,
    likesPerDay: {
  DateTime(2024,06,21,00,00,00): 117.40,
  DateTime(2024,06,20,00,00,00): 117.40,
  DateTime(2024,06,19,00,00,00): 96.80,
  DateTime(2024,06,18,00,00,00): 83.20,
  DateTime(2024,06,17,00,00,00): 111.40,
  DateTime(2024,06,16,00,00,00): 104.60,
  DateTime(2024,06,15,00,00,00): 109.00,
  DateTime(2024,06,14,00,00,00): 116.20,
  DateTime(2024,06,13,00,00,00): 108.80,
  DateTime(2024,06,12,00,00,00): 102.00,
  DateTime(2024,06,11,00,00,00): 87.00,
  DateTime(2024,06,10,00,00,00): 117.80,
  DateTime(2024,06,09,00,00,00): 100.40,
  DateTime(2024,06,08,00,00,00): 117.20,
  DateTime(2024,06,07,00,00,00): 112.20,
  DateTime(2024,06,06,00,00,00): 93.20,
  DateTime(2024,06,05,00,00,00): 84.40,
  DateTime(2024,06,04,00,00,00): 119.40,
  DateTime(2024,06,03,00,00,00): 113.80,
  DateTime(2024,06,02,00,00,00): 100.80,
  DateTime(2024,06,01,00,00,00): 117.40,
  DateTime(2024,05,31,00,00,00): 88.40,
  DateTime(2024,05,30,00,00,00): 94.40,
  DateTime(2024,05,29,00,00,00): 116.80,
  DateTime(2024,05,28,00,00,00): 92.80,
  DateTime(2024,05,27,00,00,00): 119.60,
  DateTime(2024,05,26,00,00,00): 80.60,
  DateTime(2024,05,25,00,00,00): 105.60,
  DateTime(2024,05,24,00,00,00): 110.40,
  DateTime(2024,05,23,00,00,00): 84.20,
  DateTime(2024,05,22,00,00,00): 118.20,
  DateTime(2024,05,21,00,00,00): 112.80,
  DateTime(2024,05,20,00,00,00): 119.20,
  DateTime(2024,05,19,00,00,00): 86.60,
  DateTime(2024,05,18,00,00,00): 88.80,
  DateTime(2024,05,17,00,00,00): 93.20,
  DateTime(2024,05,16,00,00,00): 119.20,
  DateTime(2024,05,15,00,00,00): 86.40,
  DateTime(2024,05,14,00,00,00): 81.20,
  DateTime(2024,05,13,00,00,00): 92.60,
  DateTime(2024,05,12,00,00,00): 81.80,
  DateTime(2024,05,11,00,00,00): 90.40,
  DateTime(2024,05,10,00,00,00): 92.00,
  DateTime(2024,05,09,00,00,00): 101.80,
  DateTime(2024,05,08,00,00,00): 114.20,
  DateTime(2024,05,07,00,00,00): 101.80,
  DateTime(2024,05,06,00,00,00): 93.20,
  DateTime(2024,05,05,00,00,00): 93.60,
  DateTime(2024,05,04,00,00,00): 99.80,
  DateTime(2024,05,03,00,00,00): 117.20,
  DateTime(2024,05,02,00,00,00): 89.80,
  DateTime(2024,05,01,00,00,00): 116.60,
  DateTime(2024,04,30,00,00,00): 109.20,
  DateTime(2024,04,29,00,00,00): 106.20,
  DateTime(2024,04,28,00,00,00): 88.20,
  DateTime(2024,04,27,00,00,00): 103.40,
  DateTime(2024,04,26,00,00,00): 109.60,
  DateTime(2024,04,25,00,00,00): 108.40,
  DateTime(2024,04,24,00,00,00): 116.80,
  DateTime(2024,04,23,00,00,00): 119.40,
  DateTime(2024,04,22,00,00,00): 111.00
  },
      );
      _state = PostPerformanceState.loaded;
    } catch (e) {
      _state = PostPerformanceState.error;
      error = e.toString();
    }

    notifyListeners();
  }
}
