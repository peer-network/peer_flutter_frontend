import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_exchange_model.freezed.dart';
part 'currency_exchange_model.g.dart';

@freezed
class CurrencyExchangeModel with _$CurrencyExchangeModel {
  const factory CurrencyExchangeModel({
    required double creditValue,
    required int totalCreditsInSystem,
  }) = _CurrencyExchangeModel;

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyExchangeModelFromJson(json);

  //Map<String, dynamic> toJson() => _$CurrencyExchangeModelToJson(this);

  // Static methods for serialization
  static CurrencyExchangeModel fromJsonStatic(Map<String, dynamic> json) {
    return CurrencyExchangeModel.fromJson(json);
  }
}
