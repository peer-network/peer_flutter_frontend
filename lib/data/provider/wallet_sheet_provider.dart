import 'package:flutter/material.dart';
import 'package:peer_app/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/models/wallet.dart';

enum WalletState { none, loading, loaded, error }

class WalletSheetProvider with ChangeNotifier {
  late Wallet _wallet;
  WalletState _state = WalletState.none;

  Wallet get wallet => _wallet;
  WalletState get state => _state;

  WalletSheetProvider() {
    fetchWallet();
  }

  void fetchWallet() {
    _state = WalletState.loading;
    notifyListeners();
    try {
      // final response = await _dioClient.get(ApiEndpoints.wallet);
      // TODO replace trough real api call
      Future.delayed(const Duration(seconds: 2), () {
        Map<String, dynamic> _dummyWallet =
            dummyWallet["wallet"] as Map<String, dynamic>;
        _wallet = Wallet.fromJson(_dummyWallet);
        _state = WalletState.loaded;
        notifyListeners();
      });
    } catch (e) {
      _state = WalletState.error;
      notifyListeners();
    }
  }
}
