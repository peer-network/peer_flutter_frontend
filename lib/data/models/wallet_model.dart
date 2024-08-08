import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:peer_app/data/models/credit_source_model.dart';
import 'package:peer_app/data/models/account_development_model.dart';

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
    required AccountDevelopmentModel accountDevelopment,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
}

@freezed
class CurrencyExchangeModel with _$CurrencyExchangeModel {
  const factory CurrencyExchangeModel({
    required double creditValue,
    required int totalCreditsInSystem,
  }) = _CurrencyExchangeModel;

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) => _$CurrencyExchangeModelFromJson(json);
}
