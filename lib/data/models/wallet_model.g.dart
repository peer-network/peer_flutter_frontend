// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletModelImpl _$$WalletModelImplFromJson(Map<String, dynamic> json) =>
    _$WalletModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      totalCredits: (json['totalCredits'] as num).toInt(),
      creditsCollectedToday: (json['creditsCollectedToday'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'totalCredits': instance.totalCredits,
      'creditsCollectedToday': instance.creditsCollectedToday,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

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

_$CreditsSourceModelImpl _$$CreditsSourceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditsSourceModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CreditSourceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreditsSourceModelImplToJson(
        _$CreditsSourceModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$CreditSourceItemModelImpl _$$CreditSourceItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditSourceItemModelImpl(
      label: json['label'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$CreditSourceItemModelImplToJson(
        _$CreditSourceItemModelImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
    };

_$AccountDevelopmentModelImpl _$$AccountDevelopmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDevelopmentModelImpl(
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      timestamps: (json['timestamps'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$AccountDevelopmentModelImplToJson(
        _$AccountDevelopmentModelImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
      'timestamps':
          instance.timestamps.map((e) => e.toIso8601String()).toList(),
    };
