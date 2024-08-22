// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_development_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
