import 'package:freezed_annotation/freezed_annotation.dart';
import '/data/models/credit_source_model.dart';
import '/data/models/account_development_model.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required int id,
    required int userId,
    required int totalCredits,
    required int creditsCollectedToday,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CreditsSourceModel creditsSource,
    @JsonKey(fromJson: CurrencyExchangeModel.fromJsonStatic)
    required CurrencyExchangeModel currencyExchange,
    required AccountDevelopmentModel accountDevelopment,
    @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
    Map<DateTime, double>? tokensPerDay,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}

// Custom fromJson method to handle nullable Map<DateTime, double>
Map<DateTime, double>? _tokensPerDayFromJson(Map<String, dynamic>? json) {
  if (json == null) return null;
  return json.map((key, value) =>
      MapEntry(DateTime.parse(key), (value as num).toDouble()));
}

// Custom toJson method to handle nullable Map<DateTime, double>
Map<String, double>? _tokensPerDayToJson(Map<DateTime, double>? map) {
  return map?.map((key, value) => MapEntry(key.toIso8601String(), value));
}
