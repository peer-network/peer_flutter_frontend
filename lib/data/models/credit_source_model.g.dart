// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
