// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      postId: (json['postId'] as num).toInt(),
      userId: json['userId'] as String,
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLiked: json['isLiked'] as bool?,
      likeCount: (json['likeCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'postId': instance.postId,
      'userId': instance.userId,
      'creator': instance.creator.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'user': instance.user?.toJson(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'isLiked': instance.isLiked,
      'likeCount': instance.likeCount,
    };
