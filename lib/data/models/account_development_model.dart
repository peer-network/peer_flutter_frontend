import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_development_model.freezed.dart';
part 'account_development_model.g.dart';

@freezed
class AccountDevelopmentModel with _$AccountDevelopmentModel {
  const factory AccountDevelopmentModel({
    required List<double> values,
    required List<DateTime> timestamps,
  }) = _AccountDevelopmentModel;

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDevelopmentModelFromJson(json);
}

@freezed
class CurrencyExchangeModel with _$CurrencyExchangeModel {
  const factory CurrencyExchangeModel({
    required double creditValue,
    required int totalCreditsInSystem,
  }) = _CurrencyExchangeModel;

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyExchangeModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyExchangeModelToJson(this);
}

Map<String, dynamic> _$CurrencyExchangeModelToJson(CurrencyExchangeModel instance) {
  return <String, dynamic>{
    'creditValue': instance.creditValue,
    'totalCreditsInSystem': instance.totalCreditsInSystem,
  };
}