import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '/data/models/wallet_model.dart';
import '/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/data/models/credit_source_model.dart';



enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  late WalletModel _wallet;
  WalletState _state = WalletState.none;
  String? error;

  WalletModel get wallet => _wallet;
  WalletState get state => _state;

  CurrencyExchangeModel get currencyExchange => _wallet.currencyExchange; // Access currencyExchange
  CreditsSourceModel get creditsSource => _wallet.creditsSource; // Access creditsSource

  WalletSheetProvider() {
    fetchWallet();
  }

  Future<void> fetchWallet() async {
    _state = WalletState.loading;
    error = null;
    notifyListeners();

    try {
      // Assuming `dummyWallet` contains data for the entire `WalletModel`
      _wallet = WalletModel.fromJson(dummyWallet);

      // Sort the creditsSource items inside the wallet
      _wallet = _wallet.copyWith(
        creditsSource: sortItems(_wallet.creditsSource),
      );

      _state = WalletState.loaded;
    } catch (e) {
      _state = WalletState.error;
      error = e.toString();
    }

    notifyListeners();
  }

  CreditsSourceModel sortItems(CreditsSourceModel source) {
    source.items.sort((a, b) => b.amount.compareTo(a.amount));
    return source;
  }

  String formatDigits(num digits) {
    final formatter = NumberFormat("#,###", "de_DE");
    return formatter.format(digits);
  }
}
