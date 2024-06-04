// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      verified: json['verified'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      verificationToken: json['verificationToken'] as String?,
      bio: json['bio'] as String?,
      amountOfPosts: (json['amountOfPosts'] as num?)?.toInt(),
      amountOfFollowers: (json['amountOfFollowers'] as num?)?.toInt(),
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFollowing: json['isFollowing'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'email': instance.email,
      'verified': instance.verified,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'verificationToken': instance.verificationToken,
      'bio': instance.bio,
      'amountOfPosts': instance.amountOfPosts,
      'amountOfFollowers': instance.amountOfFollowers,
      'posts': instance.posts,
      'isFollowing': instance.isFollowing,
    };
