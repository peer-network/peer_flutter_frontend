// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
