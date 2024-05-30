// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextPostImpl _$$TextPostImplFromJson(Map<String, dynamic> json) =>
    _$TextPostImpl(
      id: json['id'] as String,
      caption: json['caption'] as String,
      content: json['content'] as String,
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      amountClicks: (json['amountClicks'] as num?)?.toInt(),
      amountComments: (json['amountComments'] as num?)?.toInt(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextPostImplToJson(_$TextPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caption': instance.caption,
      'content': instance.content,
      'creator': instance.creator.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'amountClicks': instance.amountClicks,
      'amountComments': instance.amountComments,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
      'runtimeType': instance.$type,
    };

_$ImagePostImpl _$$ImagePostImplFromJson(Map<String, dynamic> json) =>
    _$ImagePostImpl(
      id: json['id'] as String,
      caption: json['caption'] as String,
      description: json['description'] as String,
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      amountClicks: (json['amountClicks'] as num?)?.toInt(),
      amountComments: (json['amountComments'] as num?)?.toInt(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
      aspectRatio: json['aspectRatio'] as String? ?? '4x3',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ImagePostImplToJson(_$ImagePostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caption': instance.caption,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'imageUrls': instance.imageUrls,
      'amountClicks': instance.amountClicks,
      'amountComments': instance.amountComments,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
      'aspectRatio': instance.aspectRatio,
      'runtimeType': instance.$type,
    };

_$VideoPostImpl _$$VideoPostImplFromJson(Map<String, dynamic> json) =>
    _$VideoPostImpl(
      id: json['id'] as String,
      videoUrl: json['videoUrl'] as String,
      caption: json['caption'] as String,
      description: json['description'] as String,
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      amountClicks: (json['amountClicks'] as num?)?.toInt(),
      amountComments: (json['amountComments'] as num?)?.toInt(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VideoPostImplToJson(_$VideoPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'caption': instance.caption,
      'description': instance.description,
      'creator': instance.creator.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'amountClicks': instance.amountClicks,
      'amountComments': instance.amountComments,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
      'runtimeType': instance.$type,
    };
