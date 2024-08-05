import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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

@freezed
class CreditsSourceModel with _$CreditsSourceModel {
  const factory CreditsSourceModel({
    required List<CreditSourceItemModel> items,
  }) = _CreditsSourceModel;

  factory CreditsSourceModel.fromJson(Map<String, dynamic> json) => _$CreditsSourceModelFromJson(json);
}

@freezed
class CreditSourceItemModel with _$CreditSourceItemModel {
  const factory CreditSourceItemModel({
    required String label,
    required int amount,
  }) = _CreditSourceItemModel;

  factory CreditSourceItemModel.fromJson(Map<String, dynamic> json) => _$CreditSourceItemModelFromJson(json);
}

@freezed
class AccountDevelopmentModel with _$AccountDevelopmentModel {
  const factory AccountDevelopmentModel({
    required List<double> values,
    required List<DateTime> timestamps,
  }) = _AccountDevelopmentModel;

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) => _$AccountDevelopmentModelFromJson(json);
}
