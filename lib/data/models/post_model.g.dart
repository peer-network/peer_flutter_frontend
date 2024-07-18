// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextPostImpl _$$TextPostImplFromJson(Map<String, dynamic> json) =>
    _$TextPostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountComments: (json['amountComments'] as num).toInt(),
      amountLikes: (json['amountLikes'] as num).toInt(),
      amountViews: (json['amountViews'] as num).toInt(),
      gemsTotal: (json['gemsTotal'] as num?)?.toInt(),
      gemsToday: (json['gemsToday'] as num?)?.toInt(),
      gemsAllTimeHigh: (json['gemsAllTimeHigh'] as num?)?.toInt(),
      gemsLikes: (json['gemsLikes'] as num?)?.toInt(),
      gemsViews: (json['gemsViews'] as num?)?.toInt(),
      gemsShares: (json['gemsShares'] as num?)?.toInt(),
      likesPerDay:
          _likesPerDayFromJson(json['likesPerDay'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextPostImplToJson(_$TextPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'user': instance.user.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'amountComments': instance.amountComments,
      'amountLikes': instance.amountLikes,
      'amountViews': instance.amountViews,
      'gemsTotal': instance.gemsTotal,
      'gemsToday': instance.gemsToday,
      'gemsAllTimeHigh': instance.gemsAllTimeHigh,
      'gemsLikes': instance.gemsLikes,
      'gemsViews': instance.gemsViews,
      'gemsShares': instance.gemsShares,
      'likesPerDay': _likesPerDayToJson(instance.likesPerDay),
      'runtimeType': instance.$type,
    };

_$ImagePostImpl _$$ImagePostImplFromJson(Map<String, dynamic> json) =>
    _$ImagePostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      mediaDescription: json['mediaDescription'] as String,
      media: json['media'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountComments: (json['amountComments'] as num?)?.toInt(),
      amountLikes: (json['amountLikes'] as num?)?.toInt(),
      amountViews: (json['amountViews'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      aspectRatio: json['aspectRatio'] == null
          ? ImageAspectRatios.square
          : const ImageAspectRatioConverter()
              .fromJson(json['aspectRatio'] as String),
      gemsTotal: (json['gemsTotal'] as num?)?.toInt(),
      gemsToday: (json['gemsToday'] as num?)?.toInt(),
      gemsAllTimeHigh: (json['gemsAllTimeHigh'] as num?)?.toInt(),
      gemsLikes: (json['gemsLikes'] as num?)?.toInt(),
      gemsViews: (json['gemsViews'] as num?)?.toInt(),
      gemsShares: (json['gemsShares'] as num?)?.toInt(),
      likesPerDay:
          _likesPerDayFromJson(json['likesPerDay'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ImagePostImplToJson(_$ImagePostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'mediaDescription': instance.mediaDescription,
      'media': instance.media,
      'createdAt': instance.createdAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'amountComments': instance.amountComments,
      'amountLikes': instance.amountLikes,
      'amountViews': instance.amountViews,
      'user': instance.user?.toJson(),
      'aspectRatio':
          const ImageAspectRatioConverter().toJson(instance.aspectRatio),
      'gemsTotal': instance.gemsTotal,
      'gemsToday': instance.gemsToday,
      'gemsAllTimeHigh': instance.gemsAllTimeHigh,
      'gemsLikes': instance.gemsLikes,
      'gemsViews': instance.gemsViews,
      'gemsShares': instance.gemsShares,
      'likesPerDay': _likesPerDayToJson(instance.likesPerDay),
      'runtimeType': instance.$type,
    };

_$VideoPostImpl _$$VideoPostImplFromJson(Map<String, dynamic> json) =>
    _$VideoPostImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      media: json['media'] as String,
      mediaDescription: json['mediaDescription'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountComments: (json['amountComments'] as num).toInt(),
      amountLikes: (json['amountLikes'] as num).toInt(),
      amountViews: (json['amountViews'] as num).toInt(),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      gemsTotal: (json['gemsTotal'] as num?)?.toInt(),
      gemsToday: (json['gemsToday'] as num?)?.toInt(),
      gemsAllTimeHigh: (json['gemsAllTimeHigh'] as num?)?.toInt(),
      gemsLikes: (json['gemsLikes'] as num?)?.toInt(),
      gemsViews: (json['gemsViews'] as num?)?.toInt(),
      gemsShares: (json['gemsShares'] as num?)?.toInt(),
      likesPerDay:
          _likesPerDayFromJson(json['likesPerDay'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VideoPostImplToJson(_$VideoPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'media': instance.media,
      'mediaDescription': instance.mediaDescription,
      'createdAt': instance.createdAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'amountComments': instance.amountComments,
      'amountLikes': instance.amountLikes,
      'amountViews': instance.amountViews,
      'user': instance.user.toJson(),
      'gemsTotal': instance.gemsTotal,
      'gemsToday': instance.gemsToday,
      'gemsAllTimeHigh': instance.gemsAllTimeHigh,
      'gemsLikes': instance.gemsLikes,
      'gemsViews': instance.gemsViews,
      'gemsShares': instance.gemsShares,
      'likesPerDay': _likesPerDayToJson(instance.likesPerDay),
      'runtimeType': instance.$type,
    };
