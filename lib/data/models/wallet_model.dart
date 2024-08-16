import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '/data/models/credit_source_model.dart'; // Ensure this is correctly imported
import 'currency_exchange_model.dart'; // Ensure this is correctly imported
import '/data/models/account_development_model.dart'; // Ensure this is correctly imported

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required int id,
    required int userId,
    required int totalCredits,
    required int creditsCollectedToday,
    DateTime? createdAt,
    DateTime? updatedAt,
    required CreditsSourceModel creditsSource,
    required CurrencyExchangeModel currencyExchange,
    required AccountDevelopmentModel accountDevelopment,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}
