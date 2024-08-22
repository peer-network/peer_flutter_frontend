// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_source_item_model.dart';

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
