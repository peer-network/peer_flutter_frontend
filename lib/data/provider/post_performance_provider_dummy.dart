// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:peer_app/data/models/post_performance_model.dart';
// import 'package:peer_app/core/exceptions/base_exception.dart';
// import 'package:peer_app/data/services/gql_client_service.dart';
// import 'package:peer_app/data/dummy_response/dummy_post_performance.dart';
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
//       document: gql(r'''
//         query GetPostPerformance($post_id: Int!) {
//           postPerformance(post_id: $post_id) {
//             post_id
//             user_id
//             image_urls
//             post_text
//             created_at
//             gems_total
//             gems_today
//             gems_all_time_high
//             gems_likes
//             gems_views
//             gems_shares
//             likes_per_day
//           }
//         }
//       '''),
//       fetchPolicy: FetchPolicy.networkOnly,
//       variables: {
//         'post_id': 2, // TODO: Replace with the actual post ID
//       },
//     );

//     try {
//       QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

//       if (queryResult.hasException) {
//         throw queryResult.exception!;
//       }

//       if (queryResult.data == null) {
//         throw Exception("No data found");
//       }

//       final postPerformanceData = queryResult.data!['postPerformance'];
//       if (postPerformanceData != null) {
//         _postPerformance = PostPerformanceModel.fromJson(postPerformanceData);
//         _state = PostPerformanceState.loaded;
//       } else {
//         throw Exception("No post performance data found");
//       }
//     } catch (e) {
//       error = e.toString();
//       CustomException(e.toString(), StackTrace.current).handleError();

//       // Use dummy data in case of an error
//       if (kDebugMode) {
//         _postPerformance = PostPerformanceModel.fromJson(dummyPostPerformance);
//         _state = PostPerformanceState.loaded;
//       } else {
//         _state = PostPerformanceState.error;
//       }
//     }

//     notifyListeners();
//   }
// }


