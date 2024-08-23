import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/credit_source_model.dart';
import 'package:peer_app/data/models/credits_source_item_model.dart';
import 'package:peer_app/data/models/currency_exchange_model.dart';
import 'package:peer_app/data/models/wallet_model.dart';
import 'package:peer_app/data/dummy_response/dummy_wallet.dart';

enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  late WalletModel? _wallet;
  WalletState _state = WalletState.none;
  String? error;

  WalletModel? get wallet => _wallet;
  WalletState get state =>
      _state; // same state for all data like currencyexchange and creditsource
  WalletSheetProvider() {
    fetchWallet();
  }

  Future<void> fetchWallet() async {
    _state = WalletState.loading;
    error = null;
    notifyListeners();

    try {
      await Future.delayed(
          const Duration(seconds: 2)); // Simulate network delay

      try {
        _wallet = WalletModel.fromJson(gregorDummyWallet);

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
    List<CreditSourceItemModel> modifiableItems = List.from(source.items);
    modifiableItems.sort((a, b) => b.amount.compareTo(a.amount));
    return source.copyWith(items: modifiableItems);
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
