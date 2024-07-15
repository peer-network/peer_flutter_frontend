// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentModel _$PostCommentModelFromJson(Map<String, dynamic> json) {
  return _PostCommentModel.fromJson(json);
}

/// @nodoc
mixin _$PostCommentModel {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get userId =>
      throw _privateConstructorUsedError; // required UserModel creator, // Seems like "creator" and "user" are the same. There is no creator in the api
  DateTime get createdAt => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  List<PostCommentModel> get comments => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCommentModelCopyWith<PostCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentModelCopyWith<$Res> {
  factory $PostCommentModelCopyWith(
          PostCommentModel value, $Res Function(PostCommentModel) then) =
      _$PostCommentModelCopyWithImpl<$Res, PostCommentModel>;
  @useResult
  $Res call(
      {String id,
      String content,
      int postId,
      String userId,
      DateTime createdAt,
      UserModel? user,
      List<PostCommentModel> comments,
      bool? isLiked,
      int? likeCount});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$PostCommentModelCopyWithImpl<$Res, $Val extends PostCommentModel>
    implements $PostCommentModelCopyWith<$Res> {
  _$PostCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? postId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? user = freezed,
    Object? comments = null,
    Object? isLiked = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<PostCommentModel>,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostCommentModelImplCopyWith<$Res>
    implements $PostCommentModelCopyWith<$Res> {
  factory _$$PostCommentModelImplCopyWith(_$PostCommentModelImpl value,
          $Res Function(_$PostCommentModelImpl) then) =
      __$$PostCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      int postId,
      String userId,
      DateTime createdAt,
      UserModel? user,
      List<PostCommentModel> comments,
      bool? isLiked,
      int? likeCount});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$PostCommentModelImplCopyWithImpl<$Res>
    extends _$PostCommentModelCopyWithImpl<$Res, _$PostCommentModelImpl>
    implements _$$PostCommentModelImplCopyWith<$Res> {
  __$$PostCommentModelImplCopyWithImpl(_$PostCommentModelImpl _value,
      $Res Function(_$PostCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? postId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? user = freezed,
    Object? comments = null,
    Object? isLiked = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_$PostCommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<PostCommentModel>,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostCommentModelImpl implements _PostCommentModel {
  const _$PostCommentModelImpl(
      {required this.id,
      required this.content,
      required this.postId,
      required this.userId,
      required this.createdAt,
      required this.user,
      final List<PostCommentModel> comments = const [],
      this.isLiked,
      this.likeCount})
      : _comments = comments;

  factory _$PostCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final int postId;
  @override
  final String userId;
// required UserModel creator, // Seems like "creator" and "user" are the same. There is no creator in the api
  @override
  final DateTime createdAt;
  @override
  final UserModel? user;
  final List<PostCommentModel> _comments;
  @override
  @JsonKey()
  List<PostCommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool? isLiked;
  @override
  final int? likeCount;

  @override
  String toString() {
    return 'PostCommentModel(id: $id, content: $content, postId: $postId, userId: $userId, createdAt: $createdAt, user: $user, comments: $comments, isLiked: $isLiked, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      postId,
      userId,
      createdAt,
      user,
      const DeepCollectionEquality().hash(_comments),
      isLiked,
      likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      __$$PostCommentModelImplCopyWithImpl<_$PostCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentModelImplToJson(
      this,
    );
  }
}

abstract class _PostCommentModel implements PostCommentModel {
  const factory _PostCommentModel(
      {required final String id,
      required final String content,
      required final int postId,
      required final String userId,
      required final DateTime createdAt,
      required final UserModel? user,
      final List<PostCommentModel> comments,
      final bool? isLiked,
      final int? likeCount}) = _$PostCommentModelImpl;

  factory _PostCommentModel.fromJson(Map<String, dynamic> json) =
      _$PostCommentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  int get postId;
  @override
  String get userId;
  @override // required UserModel creator, // Seems like "creator" and "user" are the same. There is no creator in the api
  DateTime get createdAt;
  @override
  UserModel? get user;
  @override
  List<PostCommentModel> get comments;
  @override
  bool? get isLiked;
  @override
  int? get likeCount;
  @override
  @JsonKey(ignore: true)
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
