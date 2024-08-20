import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '/data/models/wallet_model.dart';  // Import the WalletModel
import '/data/dummy_response/dummy_wallet.dart';  // Import the dummy data for testing
import '/data/models/credit_source_model.dart';  // Import CreditsSourceModel
import '/data/models/account_development_model.dart';  // Import CurrencyExchangeModel and AccountDevelopmentModel

enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  WalletModel? _wallet; // Nullable WalletModel to handle uninitialized state
  WalletState _state = WalletState.none;
  String? error;

  WalletModel? get wallet => _wallet; // Return nullable WalletModel
  WalletState get state => _state;

  // Nullable getter for currencyExchange
  CurrencyExchangeModel? get currencyExchange => _wallet?.currencyExchange;

  Future<void> fetchWallet() async {
    _state = WalletState.loading;
    error = null;
    notifyListeners();

  try {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    try {
      _wallet = WalletModel.fromJson(dummyWallet);

      // Ensure creditsSource is not null before sorting
      if (_wallet?.creditsSource.items.isEmpty ?? true) {
        throw Exception('CreditsSource items are missing or empty.');
      }

      _wallet = _wallet!.copyWith(
        creditsSource: sortItems(_wallet!.creditsSource),
      );

      _state = WalletState.loaded;
      print('Wallet data loaded successfully');
    } catch (e) {
      throw Exception('Failed to construct WalletModel: $e');
    }
  } catch (e) {
    _wallet = null;
    _state = WalletState.error;
    error = e.toString();
    print('Error fetching wallet data: $error');
  }

    notifyListeners();
  }

CreditsSourceModel sortItems(CreditsSourceModel source) {
  // Create a modifiable copy of the items list
  final modifiableItems = List<CreditSourceItemModel>.from(source.items);
  modifiableItems.sort((a, b) => b.amount.compareTo(a.amount));
  
  // Return a new CreditsSourceModel with the sorted items
  return source.copyWith(items: modifiableItems);
}


  // Method to format digits
  String formatDigits(num digits) {
    final formatter = NumberFormat("#,###", "de_DE");
    return formatter.format(digits);
  }
}
