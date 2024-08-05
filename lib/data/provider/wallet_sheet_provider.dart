import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
// import 'package:peer_app/data/models/wallet_model/credits_source_model.dart';
// import 'package:peer_app/data/models/wallet_model/currency_exchange_model.dart';
// import 'package:peer_app/data/models/wallet_model/wallet_model.dart';
import 'package:peer_app/data/models/wallet_model.dart';

import 'package:peer_app/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

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
