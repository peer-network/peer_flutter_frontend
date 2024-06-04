// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return TextPost.fromJson(json);
    case 'image':
      return ImagePost.fromJson(json);
    case 'video':
      return VideoPost.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PostModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PostModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError; // user in json
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;
  bool get isReported => throw _privateConstructorUsedError;
  bool get isDisliked => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  int? get amountComments => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        image,
    required TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult? Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextPost value) text,
    required TResult Function(ImagePost value) image,
    required TResult Function(VideoPost value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextPost value)? text,
    TResult? Function(ImagePost value)? image,
    TResult? Function(VideoPost value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextPost value)? text,
    TResult Function(ImagePost value)? image,
    TResult Function(VideoPost value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      UserModel user,
      DateTime createdAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<CommentModel> comments,
      int? amountComments,
      int? likeCount,
      int? viewCount});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? user = null,
    Object? createdAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? comments = null,
    Object? amountComments = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisliked: null == isDisliked
          ? _value.isDisliked
          : isDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      amountComments: freezed == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextPostImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$TextPostImplCopyWith(
          _$TextPostImpl value, $Res Function(_$TextPostImpl) then) =
      __$$TextPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      UserModel user,
      DateTime createdAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<CommentModel> comments,
      int? amountComments,
      int? likeCount,
      int? viewCount});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$TextPostImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$TextPostImpl>
    implements _$$TextPostImplCopyWith<$Res> {
  __$$TextPostImplCopyWithImpl(
      _$TextPostImpl _value, $Res Function(_$TextPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? user = null,
    Object? createdAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? comments = null,
    Object? amountComments = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_$TextPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisliked: null == isDisliked
          ? _value.isDisliked
          : isDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      amountComments: freezed == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TextPostImpl implements TextPost {
  const _$TextPostImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.user,
      required this.createdAt,
      required this.isLiked,
      required this.isViewed,
      required this.isReported,
      required this.isDisliked,
      required this.isSaved,
      final List<CommentModel> comments = const [],
      this.amountComments,
      this.likeCount,
      this.viewCount,
      final String? $type})
      : _comments = comments,
        $type = $type ?? 'text';

  factory _$TextPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextPostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
//title in json
  @override
  final String content;
  @override
  final UserModel user;
// user in json
  @override
  final DateTime createdAt;
  @override
  final bool isLiked;
  @override
  final bool isViewed;
  @override
  final bool isReported;
  @override
  final bool isDisliked;
  @override
  final bool isSaved;
  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int? amountComments;
  @override
  final int? likeCount;
  @override
  final int? viewCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.text(id: $id, title: $title, content: $content, user: $user, createdAt: $createdAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, comments: $comments, amountComments: $amountComments, likeCount: $likeCount, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported) &&
            (identical(other.isDisliked, isDisliked) ||
                other.isDisliked == isDisliked) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.amountComments, amountComments) ||
                other.amountComments == amountComments) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      user,
      createdAt,
      isLiked,
      isViewed,
      isReported,
      isDisliked,
      isSaved,
      const DeepCollectionEquality().hash(_comments),
      amountComments,
      likeCount,
      viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextPostImplCopyWith<_$TextPostImpl> get copyWith =>
      __$$TextPostImplCopyWithImpl<_$TextPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        image,
    required TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        video,
  }) {
    return text(
        id,
        title,
        content,
        user,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult? Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
  }) {
    return text?.call(
        id,
        title,
        content,
        user,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(
          id,
          title,
          content,
          user,
          createdAt,
          isLiked,
          isViewed,
          isReported,
          isDisliked,
          isSaved,
          comments,
          amountComments,
          likeCount,
          viewCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextPost value) text,
    required TResult Function(ImagePost value) image,
    required TResult Function(VideoPost value) video,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextPost value)? text,
    TResult? Function(ImagePost value)? image,
    TResult? Function(VideoPost value)? video,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextPost value)? text,
    TResult Function(ImagePost value)? image,
    TResult Function(VideoPost value)? video,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextPostImplToJson(
      this,
    );
  }
}

abstract class TextPost implements PostModel {
  const factory TextPost(
      {required final String id,
      required final String title,
      required final String content,
      required final UserModel user,
      required final DateTime createdAt,
      required final bool isLiked,
      required final bool isViewed,
      required final bool isReported,
      required final bool isDisliked,
      required final bool isSaved,
      final List<CommentModel> comments,
      final int? amountComments,
      final int? likeCount,
      final int? viewCount}) = _$TextPostImpl;

  factory TextPost.fromJson(Map<String, dynamic> json) =
      _$TextPostImpl.fromJson;

  @override
  String get id;
  @override
  String get title; //title in json
  String get content;
  @override
  UserModel get user;
  @override // user in json
  DateTime get createdAt;
  @override
  bool get isLiked;
  @override
  bool get isViewed;
  @override
  bool get isReported;
  @override
  bool get isDisliked;
  @override
  bool get isSaved;
  @override
  List<CommentModel> get comments;
  @override
  int? get amountComments;
  @override
  int? get likeCount;
  @override
  int? get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$TextPostImplCopyWith<_$TextPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagePostImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$ImagePostImplCopyWith(
          _$ImagePostImpl value, $Res Function(_$ImagePostImpl) then) =
      __$$ImagePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String mediaDescription,
      UserModel user,
      List<CommentModel> comments,
      DateTime createdAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<String> imageUrls,
      int? amountComments,
      int? likeCount,
      int? viewCount});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ImagePostImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$ImagePostImpl>
    implements _$$ImagePostImplCopyWith<$Res> {
  __$$ImagePostImplCopyWithImpl(
      _$ImagePostImpl _value, $Res Function(_$ImagePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mediaDescription = null,
    Object? user = null,
    Object? comments = null,
    Object? createdAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? imageUrls = null,
    Object? amountComments = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_$ImagePostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaDescription: null == mediaDescription
          ? _value.mediaDescription
          : mediaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisliked: null == isDisliked
          ? _value.isDisliked
          : isDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amountComments: freezed == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ImagePostImpl implements ImagePost {
  const _$ImagePostImpl(
      {required this.id,
      required this.title,
      required this.mediaDescription,
      required this.user,
      required final List<CommentModel> comments,
      required this.createdAt,
      required this.isLiked,
      required this.isViewed,
      required this.isReported,
      required this.isDisliked,
      required this.isSaved,
      final List<String> imageUrls = const [],
      this.amountComments,
      this.likeCount,
      this.viewCount,
      final String? $type})
      : _comments = comments,
        _imageUrls = imageUrls,
        $type = $type ?? 'image';

  factory _$ImagePostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
// title in json
  @override
  final String mediaDescription;
// mediaDescription in json
  @override
  final UserModel user;
// user in jsons
  final List<CommentModel> _comments;
// user in jsons
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final DateTime createdAt;
  @override
  final bool isLiked;
  @override
  final bool isViewed;
  @override
  final bool isReported;
  @override
  final bool isDisliked;
  @override
  final bool isSaved;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final int? amountComments;
  @override
  final int? likeCount;
  @override
  final int? viewCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.image(id: $id, title: $title, mediaDescription: $mediaDescription, user: $user, comments: $comments, createdAt: $createdAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, imageUrls: $imageUrls, amountComments: $amountComments, likeCount: $likeCount, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mediaDescription, mediaDescription) ||
                other.mediaDescription == mediaDescription) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported) &&
            (identical(other.isDisliked, isDisliked) ||
                other.isDisliked == isDisliked) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.amountComments, amountComments) ||
                other.amountComments == amountComments) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      mediaDescription,
      user,
      const DeepCollectionEquality().hash(_comments),
      createdAt,
      isLiked,
      isViewed,
      isReported,
      isDisliked,
      isSaved,
      const DeepCollectionEquality().hash(_imageUrls),
      amountComments,
      likeCount,
      viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePostImplCopyWith<_$ImagePostImpl> get copyWith =>
      __$$ImagePostImplCopyWithImpl<_$ImagePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        image,
    required TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        video,
  }) {
    return image(
        id,
        title,
        mediaDescription,
        user,
        comments,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        imageUrls,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult? Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
  }) {
    return image?.call(
        id,
        title,
        mediaDescription,
        user,
        comments,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        imageUrls,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          id,
          title,
          mediaDescription,
          user,
          comments,
          createdAt,
          isLiked,
          isViewed,
          isReported,
          isDisliked,
          isSaved,
          imageUrls,
          amountComments,
          likeCount,
          viewCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextPost value) text,
    required TResult Function(ImagePost value) image,
    required TResult Function(VideoPost value) video,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextPost value)? text,
    TResult? Function(ImagePost value)? image,
    TResult? Function(VideoPost value)? video,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextPost value)? text,
    TResult Function(ImagePost value)? image,
    TResult Function(VideoPost value)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePostImplToJson(
      this,
    );
  }
}

abstract class ImagePost implements PostModel {
  const factory ImagePost(
      {required final String id,
      required final String title,
      required final String mediaDescription,
      required final UserModel user,
      required final List<CommentModel> comments,
      required final DateTime createdAt,
      required final bool isLiked,
      required final bool isViewed,
      required final bool isReported,
      required final bool isDisliked,
      required final bool isSaved,
      final List<String> imageUrls,
      final int? amountComments,
      final int? likeCount,
      final int? viewCount}) = _$ImagePostImpl;

  factory ImagePost.fromJson(Map<String, dynamic> json) =
      _$ImagePostImpl.fromJson;

  @override
  String get id;
  @override
  String get title; // title in json
  String get mediaDescription;
  @override // mediaDescription in json
  UserModel get user;
  @override // user in jsons
  List<CommentModel> get comments;
  @override
  DateTime get createdAt;
  @override
  bool get isLiked;
  @override
  bool get isViewed;
  @override
  bool get isReported;
  @override
  bool get isDisliked;
  @override
  bool get isSaved;
  List<String> get imageUrls;
  @override
  int? get amountComments;
  @override
  int? get likeCount;
  @override
  int? get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$ImagePostImplCopyWith<_$ImagePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPostImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$VideoPostImplCopyWith(
          _$VideoPostImpl value, $Res Function(_$VideoPostImpl) then) =
      __$$VideoPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String media,
      String title,
      String description,
      UserModel user,
      DateTime createdAt,
      DateTime updatedAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<CommentModel> comments,
      int? amountComments,
      int? likeCount,
      int? viewCount});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$VideoPostImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$VideoPostImpl>
    implements _$$VideoPostImplCopyWith<$Res> {
  __$$VideoPostImplCopyWithImpl(
      _$VideoPostImpl _value, $Res Function(_$VideoPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? media = null,
    Object? title = null,
    Object? description = null,
    Object? user = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? comments = null,
    Object? amountComments = freezed,
    Object? likeCount = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_$VideoPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isReported: null == isReported
          ? _value.isReported
          : isReported // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisliked: null == isDisliked
          ? _value.isDisliked
          : isDisliked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      amountComments: freezed == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VideoPostImpl implements VideoPost {
  const _$VideoPostImpl(
      {required this.id,
      required this.media,
      required this.title,
      required this.description,
      required this.user,
      required this.createdAt,
      required this.updatedAt,
      required this.isLiked,
      required this.isViewed,
      required this.isReported,
      required this.isDisliked,
      required this.isSaved,
      final List<CommentModel> comments = const [],
      this.amountComments,
      this.likeCount,
      this.viewCount,
      final String? $type})
      : _comments = comments,
        $type = $type ?? 'video';

  factory _$VideoPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoPostImplFromJson(json);

  @override
  final String id;
  @override
  final String media;
  @override
  final String title;
  @override
  final String description;
  @override
  final UserModel user;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool isLiked;
  @override
  final bool isViewed;
  @override
  final bool isReported;
  @override
  final bool isDisliked;
  @override
  final bool isSaved;
  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int? amountComments;
  @override
  final int? likeCount;
  @override
  final int? viewCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.video(id: $id, media: $media, title: $title, description: $description, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, comments: $comments, amountComments: $amountComments, likeCount: $likeCount, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.isReported, isReported) ||
                other.isReported == isReported) &&
            (identical(other.isDisliked, isDisliked) ||
                other.isDisliked == isDisliked) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.amountComments, amountComments) ||
                other.amountComments == amountComments) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      media,
      title,
      description,
      user,
      createdAt,
      updatedAt,
      isLiked,
      isViewed,
      isReported,
      isDisliked,
      isSaved,
      const DeepCollectionEquality().hash(_comments),
      amountComments,
      likeCount,
      viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPostImplCopyWith<_$VideoPostImpl> get copyWith =>
      __$$VideoPostImplCopyWithImpl<_$VideoPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        image,
    required TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)
        video,
  }) {
    return video(
        id,
        media,
        title,
        description,
        user,
        createdAt,
        updatedAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult? Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
  }) {
    return video?.call(
        id,
        media,
        title,
        description,
        user,
        createdAt,
        updatedAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        likeCount,
        viewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String title,
            String content,
            UserModel user,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            UserModel user,
            List<CommentModel> comments,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<String> imageUrls,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        image,
    TResult Function(
            String id,
            String media,
            String title,
            String description,
            UserModel user,
            DateTime createdAt,
            DateTime updatedAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel> comments,
            int? amountComments,
            int? likeCount,
            int? viewCount)?
        video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(
          id,
          media,
          title,
          description,
          user,
          createdAt,
          updatedAt,
          isLiked,
          isViewed,
          isReported,
          isDisliked,
          isSaved,
          comments,
          amountComments,
          likeCount,
          viewCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextPost value) text,
    required TResult Function(ImagePost value) image,
    required TResult Function(VideoPost value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextPost value)? text,
    TResult? Function(ImagePost value)? image,
    TResult? Function(VideoPost value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextPost value)? text,
    TResult Function(ImagePost value)? image,
    TResult Function(VideoPost value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoPostImplToJson(
      this,
    );
  }
}

abstract class VideoPost implements PostModel {
  const factory VideoPost(
      {required final String id,
      required final String media,
      required final String title,
      required final String description,
      required final UserModel user,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool isLiked,
      required final bool isViewed,
      required final bool isReported,
      required final bool isDisliked,
      required final bool isSaved,
      final List<CommentModel> comments,
      final int? amountComments,
      final int? likeCount,
      final int? viewCount}) = _$VideoPostImpl;

  factory VideoPost.fromJson(Map<String, dynamic> json) =
      _$VideoPostImpl.fromJson;

  @override
  String get id;
  String get media;
  @override
  String get title;
  String get description;
  @override
  UserModel get user;
  @override
  DateTime get createdAt;
  DateTime get updatedAt;
  @override
  bool get isLiked;
  @override
  bool get isViewed;
  @override
  bool get isReported;
  @override
  bool get isDisliked;
  @override
  bool get isSaved;
  @override
  List<CommentModel> get comments;
  @override
  int? get amountComments;
  @override
  int? get likeCount;
  @override
  int? get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$VideoPostImplCopyWith<_$VideoPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
