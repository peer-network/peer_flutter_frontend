import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '/data/models/wallet_model.dart';
import '/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/data/models/credit_source_model.dart';
import 'package:peer_app/data/models/account_development_model.dart';

enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  WalletModel? _wallet; // Nullable WalletModel to handle uninitialized state
  WalletState _state = WalletState.none;
  String? error;

  WalletModel? get wallet => _wallet; // Getter for wallet
  WalletState get state => _state; // Getter for state

  CurrencyExchangeModel? get currencyExchange =>
      _wallet?.currencyExchange; // Safely access currencyExchange
  CreditsSourceModel? get creditsSource =>
      _wallet?.creditsSource; // Safely access creditsSource
  AccountDevelopmentModel? get accountDevelopment =>
      _wallet?.accountDevelopment; // Safely access accountDevelopment

  // Constructor no longer calls fetchWallet(), this should be done explicitly by the UI
  WalletSheetProvider();

  Future<void> fetchWallet() async {
    // Prevent multiple simultaneous fetch operations
    if (_state == WalletState.loading) return;

    _state = WalletState.loading;
    error = null;
    notifyListeners();

    try {
      // Simulating a network or database call with a delay
      await Future.delayed(Duration(seconds: 2)); // Simulate network delay

      // Assuming `dummyWallet` contains data for the entire `WalletModel`
      final fetchedWallet = WalletModel.fromJson(dummyWallet);

      // Sort the creditsSource items inside the wallet
      _wallet = fetchedWallet.copyWith(
        creditsSource: sortItems(fetchedWallet.creditsSource),
      );

      _state = WalletState.loaded;
      notifyListeners();
    } catch (e) {
      _wallet = null; // Set _wallet to null in case of error
      _state = WalletState.error;
      error = e.toString();

      // Log the error for debugging purposes
      debugPrint('Error fetching wallet: $error');
    }

    notifyListeners();
  }

  // Method to reset the provider's state, useful if you need to re-fetch the wallet
  void reset() {
    _wallet = null;
    _state = WalletState.none;
    error = null;
    notifyListeners();
  }

  CreditsSourceModel sortItems(CreditsSourceModel source) {
    source.items
        .sort((a, b) => b.amount.compareTo(a.amount)); // Sort items by amount
    return source;
  }

  String formatDigits(num digits) {
    final formatter =
        NumberFormat("#,###", "de_DE"); // Format numbers with German locale
    return formatter.format(digits);
  }
}
