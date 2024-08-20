// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatContactModel _$ChatContactModelFromJson(Map<String, dynamic> json) {
  return _ChatContactModel.fromJson(json);
}

/// @nodoc
mixin _$ChatContactModel {
  String get id => throw _privateConstructorUsedError;
  UserModel get contact => throw _privateConstructorUsedError;
  ChatMessageModel? get lastChatMessage => throw _privateConstructorUsedError;
  int? get notificationCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatContactModelCopyWith<ChatContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatContactModelCopyWith<$Res> {
  factory $ChatContactModelCopyWith(
          ChatContactModel value, $Res Function(ChatContactModel) then) =
      _$ChatContactModelCopyWithImpl<$Res, ChatContactModel>;
  @useResult
  $Res call(
      {String id,
      UserModel contact,
      ChatMessageModel? lastChatMessage,
      int? notificationCount});

  $UserModelCopyWith<$Res> get contact;
  $ChatMessageModelCopyWith<$Res>? get lastChatMessage;
}

/// @nodoc
class _$ChatContactModelCopyWithImpl<$Res, $Val extends ChatContactModel>
    implements $ChatContactModelCopyWith<$Res> {
  _$ChatContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contact = null,
    Object? lastChatMessage = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as UserModel,
      lastChatMessage: freezed == lastChatMessage
          ? _value.lastChatMessage
          : lastChatMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      notificationCount: freezed == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get contact {
    return $UserModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageModelCopyWith<$Res>? get lastChatMessage {
    if (_value.lastChatMessage == null) {
      return null;
    }

    return $ChatMessageModelCopyWith<$Res>(_value.lastChatMessage!, (value) {
      return _then(_value.copyWith(lastChatMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatContactModelImplCopyWith<$Res>
    implements $ChatContactModelCopyWith<$Res> {
  factory _$$ChatContactModelImplCopyWith(_$ChatContactModelImpl value,
          $Res Function(_$ChatContactModelImpl) then) =
      __$$ChatContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UserModel contact,
      ChatMessageModel? lastChatMessage,
      int? notificationCount});

  @override
  $UserModelCopyWith<$Res> get contact;
  @override
  $ChatMessageModelCopyWith<$Res>? get lastChatMessage;
}

/// @nodoc
class __$$ChatContactModelImplCopyWithImpl<$Res>
    extends _$ChatContactModelCopyWithImpl<$Res, _$ChatContactModelImpl>
    implements _$$ChatContactModelImplCopyWith<$Res> {
  __$$ChatContactModelImplCopyWithImpl(_$ChatContactModelImpl _value,
      $Res Function(_$ChatContactModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contact = null,
    Object? lastChatMessage = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_$ChatContactModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as UserModel,
      lastChatMessage: freezed == lastChatMessage
          ? _value.lastChatMessage
          : lastChatMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      notificationCount: freezed == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChatContactModelImpl implements _ChatContactModel {
  const _$ChatContactModelImpl(
      {required this.id,
      required this.contact,
      this.lastChatMessage,
      this.notificationCount});

  factory _$ChatContactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatContactModelImplFromJson(json);

  @override
  final String id;
  @override
  final UserModel contact;
  @override
  final ChatMessageModel? lastChatMessage;
  @override
  final int? notificationCount;

  @override
  String toString() {
    return 'ChatContactModel(id: $id, contact: $contact, lastChatMessage: $lastChatMessage, notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatContactModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.lastChatMessage, lastChatMessage) ||
                other.lastChatMessage == lastChatMessage) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, contact, lastChatMessage, notificationCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatContactModelImplCopyWith<_$ChatContactModelImpl> get copyWith =>
      __$$ChatContactModelImplCopyWithImpl<_$ChatContactModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatContactModelImplToJson(
      this,
    );
  }
}

abstract class _ChatContactModel implements ChatContactModel {
  const factory _ChatContactModel(
      {required final String id,
      required final UserModel contact,
      final ChatMessageModel? lastChatMessage,
      final int? notificationCount}) = _$ChatContactModelImpl;

  factory _ChatContactModel.fromJson(Map<String, dynamic> json) =
      _$ChatContactModelImpl.fromJson;

  @override
  String get id;
  @override
  UserModel get contact;
  @override
  ChatMessageModel? get lastChatMessage;
  @override
  int? get notificationCount;
  @override
  @JsonKey(ignore: true)
  _$$ChatContactModelImplCopyWith<_$ChatContactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
