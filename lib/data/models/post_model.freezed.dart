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
  UserModel? get user => throw _privateConstructorUsedError; // user in json
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;
  bool get isReported => throw _privateConstructorUsedError;
  bool get isDisliked => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  List<CommentModel>? get comments => throw _privateConstructorUsedError;
  int? get amountComments => throw _privateConstructorUsedError;
  int? get amountLikes => throw _privateConstructorUsedError;
  int? get amountViews => throw _privateConstructorUsedError;
  int? get gemsTotal => throw _privateConstructorUsedError;
  int? get gemsToday => throw _privateConstructorUsedError;
  int? get gemsAllTimeHigh => throw _privateConstructorUsedError;
  int? get gemsLikes => throw _privateConstructorUsedError;
  int? get gemsViews => throw _privateConstructorUsedError;
  int? get gemsShares => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay => throw _privateConstructorUsedError;
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        image,
    required TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult? Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
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
      List<CommentModel>? comments,
      int amountComments,
      int amountLikes,
      int amountViews,
      int? gemsTotal,
      int? gemsToday,
      int? gemsAllTimeHigh,
      int? gemsLikes,
      int? gemsViews,
      int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double>? likesPerDay});

  $UserModelCopyWith<$Res>? get user;
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
    Object? comments = freezed,
    Object? amountComments = null,
    Object? amountLikes = null,
    Object? amountViews = null,
    Object? gemsTotal = freezed,
    Object? gemsToday = freezed,
    Object? gemsAllTimeHigh = freezed,
    Object? gemsLikes = freezed,
    Object? gemsViews = freezed,
    Object? gemsShares = freezed,
    Object? likesPerDay = freezed,
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
          ? _value.user!
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
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      amountComments: null == amountComments
          ? _value.amountComments!
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int,
      amountLikes: null == amountLikes
          ? _value.amountLikes!
          : amountLikes // ignore: cast_nullable_to_non_nullable
              as int,
      amountViews: null == amountViews
          ? _value.amountViews!
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int,
      gemsTotal: freezed == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsToday: freezed == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsAllTimeHigh: freezed == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsLikes: freezed == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsViews: freezed == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsShares: freezed == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int?,
      likesPerDay: freezed == likesPerDay
          ? _value.likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
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
      List<CommentModel>? comments,
      int amountComments,
      int amountLikes,
      int amountViews,
      int? gemsTotal,
      int? gemsToday,
      int? gemsAllTimeHigh,
      int? gemsLikes,
      int? gemsViews,
      int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double>? likesPerDay});

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
    Object? comments = freezed,
    Object? amountComments = null,
    Object? amountLikes = null,
    Object? amountViews = null,
    Object? gemsTotal = freezed,
    Object? gemsToday = freezed,
    Object? gemsAllTimeHigh = freezed,
    Object? gemsLikes = freezed,
    Object? gemsViews = freezed,
    Object? gemsShares = freezed,
    Object? likesPerDay = freezed,
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
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      amountComments: null == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int,
      amountLikes: null == amountLikes
          ? _value.amountLikes
          : amountLikes // ignore: cast_nullable_to_non_nullable
              as int,
      amountViews: null == amountViews
          ? _value.amountViews
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int,
      gemsTotal: freezed == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsToday: freezed == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsAllTimeHigh: freezed == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsLikes: freezed == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsViews: freezed == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsShares: freezed == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int?,
      likesPerDay: freezed == likesPerDay
          ? _value._likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
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
      final List<CommentModel>? comments,
      required this.amountComments,
      required this.amountLikes,
      required this.amountViews,
      this.gemsTotal,
      this.gemsToday,
      this.gemsAllTimeHigh,
      this.gemsLikes,
      this.gemsViews,
      this.gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay,
      final String? $type})
      : _comments = comments,
        _likesPerDay = likesPerDay,
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
  final List<CommentModel>? _comments;
  @override
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int amountComments;
  @override
  final int amountLikes;
  @override
  final int amountViews;
  @override
  final int? gemsTotal;
  @override
  final int? gemsToday;
  @override
  final int? gemsAllTimeHigh;
  @override
  final int? gemsLikes;
  @override
  final int? gemsViews;
  @override
  final int? gemsShares;
  final Map<DateTime, double>? _likesPerDay;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay {
    final value = _likesPerDay;
    if (value == null) return null;
    if (_likesPerDay is EqualUnmodifiableMapView) return _likesPerDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.text(id: $id, title: $title, content: $content, user: $user, createdAt: $createdAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, comments: $comments, amountComments: $amountComments, amountLikes: $amountLikes, amountViews: $amountViews, gemsTotal: $gemsTotal, gemsToday: $gemsToday, gemsAllTimeHigh: $gemsAllTimeHigh, gemsLikes: $gemsLikes, gemsViews: $gemsViews, gemsShares: $gemsShares, likesPerDay: $likesPerDay)';
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
            (identical(other.amountLikes, amountLikes) ||
                other.amountLikes == amountLikes) &&
            (identical(other.amountViews, amountViews) ||
                other.amountViews == amountViews) &&
            (identical(other.gemsTotal, gemsTotal) ||
                other.gemsTotal == gemsTotal) &&
            (identical(other.gemsToday, gemsToday) ||
                other.gemsToday == gemsToday) &&
            (identical(other.gemsAllTimeHigh, gemsAllTimeHigh) ||
                other.gemsAllTimeHigh == gemsAllTimeHigh) &&
            (identical(other.gemsLikes, gemsLikes) ||
                other.gemsLikes == gemsLikes) &&
            (identical(other.gemsViews, gemsViews) ||
                other.gemsViews == gemsViews) &&
            (identical(other.gemsShares, gemsShares) ||
                other.gemsShares == gemsShares) &&
            const DeepCollectionEquality()
                .equals(other._likesPerDay, _likesPerDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        amountLikes,
        amountViews,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        const DeepCollectionEquality().hash(_likesPerDay)
      ]);

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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        image,
    required TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
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
        amountLikes,
        amountViews,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult? Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
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
        amountLikes,
        amountViews,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
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
          amountLikes,
          amountViews,
          gemsTotal,
          gemsToday,
          gemsAllTimeHigh,
          gemsLikes,
          gemsViews,
          gemsShares,
          likesPerDay);
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
      final List<CommentModel>? comments,
      required final int amountComments,
      required final int amountLikes,
      required final int amountViews,
      final int? gemsTotal,
      final int? gemsToday,
      final int? gemsAllTimeHigh,
      final int? gemsLikes,
      final int? gemsViews,
      final int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay}) = _$TextPostImpl;

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
  List<CommentModel>? get comments;
  @override
  int get amountComments;
  @override
  int get amountLikes;
  @override
  int get amountViews;
  @override
  int? get gemsTotal;
  @override
  int? get gemsToday;
  @override
  int? get gemsAllTimeHigh;
  @override
  int? get gemsLikes;
  @override
  int? get gemsViews;
  @override
  int? get gemsShares;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay;
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
      String media,
      DateTime createdAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<CommentModel>? comments,
      int? amountComments,
      int? amountLikes,
      int? amountViews,
      UserModel? user,
      @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
      int? gemsTotal,
      int? gemsToday,
      int? gemsAllTimeHigh,
      int? gemsLikes,
      int? gemsViews,
      int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double>? likesPerDay});

  @override
  $UserModelCopyWith<$Res>? get user;
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
    Object? media = null,
    Object? createdAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? comments = freezed,
    Object? amountComments = freezed,
    Object? amountLikes = freezed,
    Object? amountViews = freezed,
    Object? user = freezed,
    Object? aspectRatio = null,
    Object? gemsTotal = freezed,
    Object? gemsToday = freezed,
    Object? gemsAllTimeHigh = freezed,
    Object? gemsLikes = freezed,
    Object? gemsViews = freezed,
    Object? gemsShares = freezed,
    Object? likesPerDay = freezed,
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
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
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
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      amountComments: freezed == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int?,
      amountLikes: freezed == amountLikes
          ? _value.amountLikes
          : amountLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      amountViews: freezed == amountViews
          ? _value.amountViews
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as ImageAspectRatios,
      gemsTotal: freezed == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsToday: freezed == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsAllTimeHigh: freezed == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsLikes: freezed == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsViews: freezed == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsShares: freezed == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int?,
      likesPerDay: freezed == likesPerDay
          ? _value._likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
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
      required this.media,
      required this.createdAt,
      required this.isLiked,
      required this.isViewed,
      required this.isReported,
      required this.isDisliked,
      required this.isSaved,
      final List<CommentModel>? comments,
      this.amountComments,
      this.amountLikes,
      this.amountViews,
      this.user,
      @ImageAspectRatioConverter() this.aspectRatio = ImageAspectRatios.square,
      this.gemsTotal,
      this.gemsToday,
      this.gemsAllTimeHigh,
      this.gemsLikes,
      this.gemsViews,
      this.gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay,
      final String? $type})
      : _comments = comments,
        _likesPerDay = likesPerDay,
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
  final String media;
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
  final List<CommentModel>? _comments;
  @override
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? amountComments;
  @override
  final int? amountLikes;
  @override
  final int? amountViews;
  @override
  final UserModel? user;
// user in json
  @override
  @JsonKey()
  @ImageAspectRatioConverter()
  final ImageAspectRatios aspectRatio;
  @override
  final int? gemsTotal;
  @override
  final int? gemsToday;
  @override
  final int? gemsAllTimeHigh;
  @override
  final int? gemsLikes;
  @override
  final int? gemsViews;
  @override
  final int? gemsShares;
  final Map<DateTime, double>? _likesPerDay;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay {
    final value = _likesPerDay;
    if (value == null) return null;
    if (_likesPerDay is EqualUnmodifiableMapView) return _likesPerDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.image(id: $id, title: $title, mediaDescription: $mediaDescription, media: $media, createdAt: $createdAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, comments: $comments, amountComments: $amountComments, amountLikes: $amountLikes, amountViews: $amountViews, user: $user, aspectRatio: $aspectRatio, gemsTotal: $gemsTotal, gemsToday: $gemsToday, gemsAllTimeHigh: $gemsAllTimeHigh, gemsLikes: $gemsLikes, gemsViews: $gemsViews, gemsShares: $gemsShares, likesPerDay: $likesPerDay)';
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
            (identical(other.media, media) || other.media == media) &&
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
            (identical(other.amountLikes, amountLikes) ||
                other.amountLikes == amountLikes) &&
            (identical(other.amountViews, amountViews) ||
                other.amountViews == amountViews) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.gemsTotal, gemsTotal) ||
                other.gemsTotal == gemsTotal) &&
            (identical(other.gemsToday, gemsToday) ||
                other.gemsToday == gemsToday) &&
            (identical(other.gemsAllTimeHigh, gemsAllTimeHigh) ||
                other.gemsAllTimeHigh == gemsAllTimeHigh) &&
            (identical(other.gemsLikes, gemsLikes) ||
                other.gemsLikes == gemsLikes) &&
            (identical(other.gemsViews, gemsViews) ||
                other.gemsViews == gemsViews) &&
            (identical(other.gemsShares, gemsShares) ||
                other.gemsShares == gemsShares) &&
            const DeepCollectionEquality()
                .equals(other._likesPerDay, _likesPerDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        mediaDescription,
        media,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        const DeepCollectionEquality().hash(_comments),
        amountComments,
        amountLikes,
        amountViews,
        user,
        aspectRatio,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        const DeepCollectionEquality().hash(_likesPerDay)
      ]);

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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        image,
    required TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        video,
  }) {
    return image(
        id,
        title,
        mediaDescription,
        media,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        amountLikes,
        amountViews,
        user,
        aspectRatio,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult? Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        video,
  }) {
    return image?.call(
        id,
        title,
        mediaDescription,
        media,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        amountLikes,
        amountViews,
        user,
        aspectRatio,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          id,
          title,
          mediaDescription,
          media,
          createdAt,
          isLiked,
          isViewed,
          isReported,
          isDisliked,
          isSaved,
          comments,
          amountComments,
          amountLikes,
          amountViews,
          user,
          aspectRatio,
          gemsTotal,
          gemsToday,
          gemsAllTimeHigh,
          gemsLikes,
          gemsViews,
          gemsShares,
          likesPerDay);
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
      required final String media,
      required final DateTime createdAt,
      required final bool isLiked,
      required final bool isViewed,
      required final bool isReported,
      required final bool isDisliked,
      required final bool isSaved,
      final List<CommentModel>? comments,
      final int? amountComments,
      final int? amountLikes,
      final int? amountViews,
      final UserModel? user,
      @ImageAspectRatioConverter() final ImageAspectRatios aspectRatio,
      final int? gemsTotal,
      final int? gemsToday,
      final int? gemsAllTimeHigh,
      final int? gemsLikes,
      final int? gemsViews,
      final int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay}) = _$ImagePostImpl;

  factory ImagePost.fromJson(Map<String, dynamic> json) =
      _$ImagePostImpl.fromJson;

  @override
  String get id;
  @override
  String get title; // title in json
  String get mediaDescription; // mediaDescription in json
  String get media;
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
  @override
  List<CommentModel>? get comments;
  @override
  int? get amountComments;
  @override
  int? get amountLikes;
  @override
  int? get amountViews;
  @override
  UserModel? get user; // user in json
  @ImageAspectRatioConverter()
  ImageAspectRatios get aspectRatio;
  @override
  int? get gemsTotal;
  @override
  int? get gemsToday;
  @override
  int? get gemsAllTimeHigh;
  @override
  int? get gemsLikes;
  @override
  int? get gemsViews;
  @override
  int? get gemsShares;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay;
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
      String title,
      String media,
      String mediaDescription,
      DateTime createdAt,
      bool isLiked,
      bool isViewed,
      bool isReported,
      bool isDisliked,
      bool isSaved,
      List<CommentModel>? comments,
      int amountComments,
      int amountLikes,
      int amountViews,
      UserModel user,
      int? gemsTotal,
      int? gemsToday,
      int? gemsAllTimeHigh,
      int? gemsLikes,
      int? gemsViews,
      int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double>? likesPerDay});

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
    Object? title = null,
    Object? media = null,
    Object? mediaDescription = null,
    Object? createdAt = null,
    Object? isLiked = null,
    Object? isViewed = null,
    Object? isReported = null,
    Object? isDisliked = null,
    Object? isSaved = null,
    Object? comments = freezed,
    Object? amountComments = null,
    Object? amountLikes = null,
    Object? amountViews = null,
    Object? user = null,
    Object? gemsTotal = freezed,
    Object? gemsToday = freezed,
    Object? gemsAllTimeHigh = freezed,
    Object? gemsLikes = freezed,
    Object? gemsViews = freezed,
    Object? gemsShares = freezed,
    Object? likesPerDay = freezed,
  }) {
    return _then(_$VideoPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      mediaDescription: null == mediaDescription
          ? _value.mediaDescription
          : mediaDescription // ignore: cast_nullable_to_non_nullable
              as String,
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
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      amountComments: null == amountComments
          ? _value.amountComments
          : amountComments // ignore: cast_nullable_to_non_nullable
              as int,
      amountLikes: null == amountLikes
          ? _value.amountLikes
          : amountLikes // ignore: cast_nullable_to_non_nullable
              as int,
      amountViews: null == amountViews
          ? _value.amountViews
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      gemsTotal: freezed == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsToday: freezed == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsAllTimeHigh: freezed == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsLikes: freezed == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsViews: freezed == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int?,
      gemsShares: freezed == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int?,
      likesPerDay: freezed == likesPerDay
          ? _value._likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VideoPostImpl implements VideoPost {
  const _$VideoPostImpl(
      {required this.id,
      required this.title,
      required this.media,
      required this.mediaDescription,
      required this.createdAt,
      required this.isLiked,
      required this.isViewed,
      required this.isReported,
      required this.isDisliked,
      required this.isSaved,
      final List<CommentModel>? comments,
      required this.amountComments,
      required this.amountLikes,
      required this.amountViews,
      required this.user,
      this.gemsTotal,
      this.gemsToday,
      this.gemsAllTimeHigh,
      this.gemsLikes,
      this.gemsViews,
      this.gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay,
      final String? $type})
      : _comments = comments,
        _likesPerDay = likesPerDay,
        $type = $type ?? 'video';

  factory _$VideoPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoPostImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String media;
  @override
  final String mediaDescription;
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
  final List<CommentModel>? _comments;
  @override
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int amountComments;
  @override
  final int amountLikes;
  @override
  final int amountViews;
  @override
  final UserModel user;
  @override
  final int? gemsTotal;
  @override
  final int? gemsToday;
  @override
  final int? gemsAllTimeHigh;
  @override
  final int? gemsLikes;
  @override
  final int? gemsViews;
  @override
  final int? gemsShares;
  final Map<DateTime, double>? _likesPerDay;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay {
    final value = _likesPerDay;
    if (value == null) return null;
    if (_likesPerDay is EqualUnmodifiableMapView) return _likesPerDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.video(id: $id, title: $title, media: $media, mediaDescription: $mediaDescription, createdAt: $createdAt, isLiked: $isLiked, isViewed: $isViewed, isReported: $isReported, isDisliked: $isDisliked, isSaved: $isSaved, comments: $comments, amountComments: $amountComments, amountLikes: $amountLikes, amountViews: $amountViews, user: $user, gemsTotal: $gemsTotal, gemsToday: $gemsToday, gemsAllTimeHigh: $gemsAllTimeHigh, gemsLikes: $gemsLikes, gemsViews: $gemsViews, gemsShares: $gemsShares, likesPerDay: $likesPerDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.mediaDescription, mediaDescription) ||
                other.mediaDescription == mediaDescription) &&
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
            (identical(other.amountLikes, amountLikes) ||
                other.amountLikes == amountLikes) &&
            (identical(other.amountViews, amountViews) ||
                other.amountViews == amountViews) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.gemsTotal, gemsTotal) ||
                other.gemsTotal == gemsTotal) &&
            (identical(other.gemsToday, gemsToday) ||
                other.gemsToday == gemsToday) &&
            (identical(other.gemsAllTimeHigh, gemsAllTimeHigh) ||
                other.gemsAllTimeHigh == gemsAllTimeHigh) &&
            (identical(other.gemsLikes, gemsLikes) ||
                other.gemsLikes == gemsLikes) &&
            (identical(other.gemsViews, gemsViews) ||
                other.gemsViews == gemsViews) &&
            (identical(other.gemsShares, gemsShares) ||
                other.gemsShares == gemsShares) &&
            const DeepCollectionEquality()
                .equals(other._likesPerDay, _likesPerDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        media,
        mediaDescription,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        const DeepCollectionEquality().hash(_comments),
        amountComments,
        amountLikes,
        amountViews,
        user,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        const DeepCollectionEquality().hash(_likesPerDay)
      ]);

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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        text,
    required TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        image,
    required TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)
        video,
  }) {
    return video(
        id,
        title,
        media,
        mediaDescription,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        amountLikes,
        amountViews,
        user,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult? Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult? Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        video,
  }) {
    return video?.call(
        id,
        title,
        media,
        mediaDescription,
        createdAt,
        isLiked,
        isViewed,
        isReported,
        isDisliked,
        isSaved,
        comments,
        amountComments,
        amountLikes,
        amountViews,
        user,
        gemsTotal,
        gemsToday,
        gemsAllTimeHigh,
        gemsLikes,
        gemsViews,
        gemsShares,
        likesPerDay);
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
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        text,
    TResult Function(
            String id,
            String title,
            String mediaDescription,
            String media,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int? amountComments,
            int? amountLikes,
            int? amountViews,
            UserModel? user,
            @ImageAspectRatioConverter() ImageAspectRatios aspectRatio,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        image,
    TResult Function(
            String id,
            String title,
            String media,
            String mediaDescription,
            DateTime createdAt,
            bool isLiked,
            bool isViewed,
            bool isReported,
            bool isDisliked,
            bool isSaved,
            List<CommentModel>? comments,
            int amountComments,
            int amountLikes,
            int amountViews,
            UserModel user,
            int? gemsTotal,
            int? gemsToday,
            int? gemsAllTimeHigh,
            int? gemsLikes,
            int? gemsViews,
            int? gemsShares,
            @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
            Map<DateTime, double>? likesPerDay)?
        video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(
          id,
          title,
          media,
          mediaDescription,
          createdAt,
          isLiked,
          isViewed,
          isReported,
          isDisliked,
          isSaved,
          comments,
          amountComments,
          amountLikes,
          amountViews,
          user,
          gemsTotal,
          gemsToday,
          gemsAllTimeHigh,
          gemsLikes,
          gemsViews,
          gemsShares,
          likesPerDay);
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
      required final String title,
      required final String media,
      required final String mediaDescription,
      required final DateTime createdAt,
      required final bool isLiked,
      required final bool isViewed,
      required final bool isReported,
      required final bool isDisliked,
      required final bool isSaved,
      final List<CommentModel>? comments,
      required final int amountComments,
      required final int amountLikes,
      required final int amountViews,
      required final UserModel user,
      final int? gemsTotal,
      final int? gemsToday,
      final int? gemsAllTimeHigh,
      final int? gemsLikes,
      final int? gemsViews,
      final int? gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      final Map<DateTime, double>? likesPerDay}) = _$VideoPostImpl;

  factory VideoPost.fromJson(Map<String, dynamic> json) =
      _$VideoPostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  String get media;
  String get mediaDescription;
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
  @override
  List<CommentModel>? get comments;
  @override
  int get amountComments;
  @override
  int get amountLikes;
  @override
  int get amountViews;
  @override
  UserModel get user;
  @override
  int? get gemsTotal;
  @override
  int? get gemsToday;
  @override
  int? get gemsAllTimeHigh;
  @override
  int? get gemsLikes;
  @override
  int? get gemsViews;
  @override
  int? get gemsShares;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double>? get likesPerDay;
  @override
  @JsonKey(ignore: true)
  _$$VideoPostImplCopyWith<_$VideoPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
