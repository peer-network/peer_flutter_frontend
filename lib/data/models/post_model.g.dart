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
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'comments': instance.comments.map((e) => e.toJson()).toList(),
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
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      amountComments: (json['amountComments'] as num?)?.toInt(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
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
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'imageUrls': instance.imageUrls,
      'amountComments': instance.amountComments,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
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
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isLiked: json['isLiked'] as bool,
      isViewed: json['isViewed'] as bool,
      isReported: json['isReported'] as bool,
      isDisliked: json['isDisliked'] as bool,
      isSaved: json['isSaved'] as bool,
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isLiked': instance.isLiked,
      'isViewed': instance.isViewed,
      'isReported': instance.isReported,
      'isDisliked': instance.isDisliked,
      'isSaved': instance.isSaved,
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'amountComments': instance.amountComments,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
      'runtimeType': instance.$type,
    };
