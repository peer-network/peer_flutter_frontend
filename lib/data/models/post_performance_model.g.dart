// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPerformanceModelImpl _$$PostPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPerformanceModelImpl(
      postId: json['postId'],
      userId: (json['userId'] as num).toInt(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      text: json['text'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      gemsTotal: (json['gemsTotal'] as num).toInt(),
      gemsToday: (json['gemsToday'] as num).toInt(),
      gemsAllTimeHigh: (json['gemsAllTimeHigh'] as num).toInt(),
      gemsLikes: (json['gemsLikes'] as num).toInt(),
      gemsViews: (json['gemsViews'] as num).toInt(),
      gemsShares: (json['gemsShares'] as num).toInt(),
      likesPerDay:
          _likesPerDayFromJson(json['likesPerDay'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostPerformanceModelImplToJson(
        _$PostPerformanceModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'userId': instance.userId,
      'imageUrls': instance.imageUrls,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
      'gemsTotal': instance.gemsTotal,
      'gemsToday': instance.gemsToday,
      'gemsAllTimeHigh': instance.gemsAllTimeHigh,
      'gemsLikes': instance.gemsLikes,
      'gemsViews': instance.gemsViews,
      'gemsShares': instance.gemsShares,
      'likesPerDay': _likesPerDayToJson(instance.likesPerDay),
    };
