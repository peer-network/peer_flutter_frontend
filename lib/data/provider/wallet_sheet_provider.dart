import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/wallet_model/credits_source_model.dart';
import 'package:peer_app/data/models/wallet_model/currency_exchange_model.dart';
import 'package:peer_app/data/models/wallet_model/wallet_model.dart';
import 'package:peer_app/data/dummy_response/dummy_wallet.dart';

enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  late WalletModel _wallet;
  late CurrencyExchangeModel _currencyExchange;
  late CreditsSourceModel _creditsSource;
  WalletState _state = WalletState.none;

  WalletModel get wallet => _wallet;
  WalletState get state =>
      _state; // same state for all data like currencyexchange and creditsource

  CurrencyExchangeModel get currencyExchange => _currencyExchange;
  CreditsSourceModel get creditsSource => _creditsSource;

  WalletSheetProvider() {
    fetchWallet();
  }

  void fetchWallet() {
    _state = WalletState.loading;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.wallet);
      // TODO replace with real api call
      Future.delayed(const Duration(seconds: 2), () {
        // dummy data for wallet
        Map<String, dynamic> _dummyWallet =
            dummyWallet["wallet"] as Map<String, dynamic>;
        _wallet = WalletModel.fromJson(_dummyWallet);

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
      });
    } catch (e) {
      _state = WalletState.error;
      notifyListeners();
    }
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
