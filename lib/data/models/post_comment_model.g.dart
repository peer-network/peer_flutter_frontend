// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentModelImpl _$$PostCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      postId: (json['postId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      subComments: (json['subComments'] as List<dynamic>?)
          ?.map((e) => PostCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLiked: json['isLiked'] as bool?,
      likeCount: (json['likeCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostCommentModelImplToJson(
        _$PostCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'postId': instance.postId,
      'createdAt': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'subComments': instance.subComments?.map((e) => e.toJson()).toList(),
      'isLiked': instance.isLiked,
      'likeCount': instance.likeCount,
    };
