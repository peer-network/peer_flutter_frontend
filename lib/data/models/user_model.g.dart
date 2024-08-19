// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      imgUrl: json['imgUrl'] as String?,
      email: json['email'] as String?,
      verified: json['verified'] as bool? ?? false,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      verificationToken: json['verificationToken'] as String?,
      biograph: json['biograph'] as String?,
      amountPosts: (json['amountPosts'] as num?)?.toInt(),
      amountFollowed: (json['amountFollowed'] as num?)?.toInt(),
      amountFollower: (json['amountFollower'] as num?)?.toInt(),
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFollowing: json['isFollowing'] as bool?,
      tokensPerDay:
          _tokensPerDayFromJson(json['tokensPerDay'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'imgUrl': instance.imgUrl,
      'email': instance.email,
      'verified': instance.verified,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'verificationToken': instance.verificationToken,
      'biograph': instance.biograph,
      'amountPosts': instance.amountPosts,
      'amountFollowed': instance.amountFollowed,
      'amountFollower': instance.amountFollower,
      'posts': instance.posts?.map((e) => e.toJson()).toList(),
      'isFollowing': instance.isFollowing,
      'tokensPerDay': _tokensPerDayToJson(instance.tokensPerDay),
    };
