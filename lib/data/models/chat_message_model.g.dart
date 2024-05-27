// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      senderId: json['senderId'] as String,
      chatId: json['chatId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isSender: json['isSender'] as bool?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'chatId': instance.chatId,
      'createdAt': instance.createdAt.toIso8601String(),
      'isSender': instance.isSender,
    };
