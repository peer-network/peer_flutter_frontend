// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyExchangeModelImpl _$$CurrencyExchangeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencyExchangeModelImpl(
      creditValue: (json['creditValue'] as num).toDouble(),
      totalCreditsInSystem: (json['totalCreditsInSystem'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrencyExchangeModelImplToJson(
        _$CurrencyExchangeModelImpl instance) =>
    <String, dynamic>{
      'creditValue': instance.creditValue,
      'totalCreditsInSystem': instance.totalCreditsInSystem,
    };
