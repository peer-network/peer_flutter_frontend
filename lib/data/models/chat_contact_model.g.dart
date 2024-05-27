// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatContactModelImpl _$$ChatContactModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatContactModelImpl(
      id: json['id'] as String,
      contact: UserModel.fromJson(json['contact'] as Map<String, dynamic>),
      lastChatMessage: json['lastChatMessage'] == null
          ? null
          : ChatMessageModel.fromJson(
              json['lastChatMessage'] as Map<String, dynamic>),
      notificationCount: (json['notificationCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatContactModelImplToJson(
        _$ChatContactModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact': instance.contact.toJson(),
      'lastChatMessage': instance.lastChatMessage?.toJson(),
      'notificationCount': instance.notificationCount,
    };
