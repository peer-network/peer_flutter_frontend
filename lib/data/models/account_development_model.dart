import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'currency_exchange_model.freezed.dart';
part 'currency_exchange_model.g.dart';

// CurrencyExchangeModel Class

@freezed
@JsonSerializable()
class CurrencyExchangeModel with _$CurrencyExchangeModel {
  const factory CurrencyExchangeModel({
    required double creditValue,
    required int totalCreditsInSystem,
  }) = _CurrencyExchangeModel;

    CurrencyExchangeModel();

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) => _$CurrencyExchangeModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyExchangeModelToJson(this);
}

// AccountDevelopmentModel Class
@freezed
class AccountDevelopmentModel with _$AccountDevelopmentModel {
  const factory AccountDevelopmentModel({
    required List<double> values,
    required List<DateTime> timestamps,
  }) = _AccountDevelopmentModel;

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDevelopmentModelFromJson(json);
}
