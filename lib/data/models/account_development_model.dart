import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_development_models.freezed.dart';  // Updated to match the new filename
part 'account_development_models.g.dart';        // Updated to match the new filename

@freezed
@JsonSerializable()
class CurrencyExchangeModel with _$CurrencyExchangeModel {
  const factory CurrencyExchangeModel({
    required double creditValue,
    required int totalCreditsInSystem,
  }) = _CurrencyExchangeModel;

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyExchangeModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyExchangeModelToJson(this);
}

@freezed
@JsonSerializable()
class AccountDevelopmentModel with _$AccountDevelopmentModel {
  const factory AccountDevelopmentModel({
    required List<double> values,
    required List<DateTime> timestamps,
  }) = _AccountDevelopmentModel;

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDevelopmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$AccountDevelopmentModelToJson(this);
}
