import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

//below 141-269 lines are working post-provider
enum PostPerformanceState { none, loading, loaded, error }

class PostProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  final List<PostModel> _posts = [];
  bool isLoading = false;
  String? error;

  List<PostModel> get newsFeed => List.unmodifiable(_posts);

  PostProvider() {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading = true;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
      
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

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

      print(responseFeed.toString());
      try {
        _posts.addAll(
          List<PostModel>.from(
            responseFeed["getAllPosts"].map(
              (postJson) {
                postJson["runtimeType"] = postJson["contentType"];

                return PostModel.fromJson(postJson);
              },
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

/*
enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  late WalletModel _wallet;
  late CurrencyExchangeModel _currencyExchange;
  late CreditsSourceModel _creditsSource;
  WalletState _state = WalletState.none;
  String? error;

  WalletModel get wallet => _wallet;
  WalletState get state =>
      _state; // same state for all data like currencyexchange and creditsource

  CurrencyExchangeModel get currencyExchange => _currencyExchange;
  CreditsSourceModel get creditsSource => _creditsSource;

  WalletSheetProvider() {
    fetchWallet();
  }

  Future<void> fetchWallet() async {
    _state = WalletState.loading;
    error = null;
    notifyListeners();

    try {
      // final response = await _dioClient.get(ApiEndpoints.wallet);
      // TODO replace with real api call
      // dummy data for currency exchange inside wallet
      Map<String, dynamic> _dummyCurrencyExchange =
          dummyWallet["currencyExchange"] as Map<String, dynamic>;
      _currencyExchange =
          CurrencyExchangeModel.fromJson(_dummyCurrencyExchange);

      // dummy data for source items inside wallet
      Map<String, dynamic> _dummySourceItems =
          dummyWallet["creditsSource"] as Map<String, dynamic>;
      _creditsSource = CreditsSourceModel.fromJson(_dummySourceItems);

      _creditsSource = sortItems(_creditsSource);

      _state = WalletState.loaded;
      notifyListeners();
    } catch (e) {
      _state = WalletState.error;
      notifyListeners();
    }

    final queryOption = QueryOptions(
        document: Queries.wallet,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          'user_id': 2, //TODO fetch real user id
        });

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

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

      final wallet = queryResult.data!;
      try {
        _wallet = WalletModel.fromJson(wallet["wallet"][0]);
        //_wallet = wallet["wallet"].map((x) => WalletModel.fromJson(x)).first;
      } catch (e, s) {
        _state = WalletState.error;
        error = e.toString();
        CustomException(e.toString(), s).handleError();
      }
    } catch (e) {
      _state = WalletState.error;
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }
    _state = WalletState.loaded;

    notifyListeners();
  }

  CreditsSourceModel sortItems(CreditsSourceModel source) {
    source.items.sort((a, b) => b.amount.compareTo(a.amount));
    return source;
  }

  String formatDigits(num digits) {
    switch (digits.toString().length) {
      case 4:
        final formatter = NumberFormat("#,###", "de_DE");
        return formatter.format(digits);
      case 5:
        final formatter = NumberFormat("##,###", "de_DE");
        return formatter.format(digits);
      case 6:
        final formatter = NumberFormat("###,###", "de_DE");
        return formatter.format(digits);
      case 7:
        final formatter = NumberFormat("#,###,###", "de_DE");
        return formatter.format(digits);
      case 8:
        final formatter = NumberFormat("##,###,###", "de_DE");
        return formatter.format(digits);
      case 9:
        final formatter = NumberFormat("###,###,###", "de_DE");
        return formatter.format(digits);
      case 10:
        final formatter = NumberFormat("#,###,###,###", "de_DE");
        return formatter.format(digits);
      default:
        return digits.toString();
    }
  }
}
*/
