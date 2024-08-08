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
      creditsSource: CreditsSourceModel.fromJson(
          json['creditsSource'] as Map<String, dynamic>),
      accountDevelopment: AccountDevelopmentModel.fromJson(
          json['accountDevelopment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'totalCredits': instance.totalCredits,
      'creditsCollectedToday': instance.creditsCollectedToday,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'creditsSource': instance.creditsSource,
      'accountDevelopment': instance.accountDevelopment,
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
