// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPerformanceModel _$PostPerformanceModelFromJson(Map<String, dynamic> json) {
  return _PostPerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$PostPerformanceModel {
  dynamic get postId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String? get postText => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int get gemsTotal => throw _privateConstructorUsedError;
  int get gemsToday => throw _privateConstructorUsedError;
  int get gemsAllTimeHigh => throw _privateConstructorUsedError;
  int get gemsLikes => throw _privateConstructorUsedError;
  int get gemsViews => throw _privateConstructorUsedError;
  int get gemsShares => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double> get likesPerDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPerformanceModelCopyWith<PostPerformanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPerformanceModelCopyWith<$Res> {
  factory $PostPerformanceModelCopyWith(PostPerformanceModel value,
          $Res Function(PostPerformanceModel) then) =
      _$PostPerformanceModelCopyWithImpl<$Res, PostPerformanceModel>;
  @useResult
  $Res call(
      {dynamic postId,
      int userId,
      List<String> imageUrls,
      String? postText,
      DateTime? createdAt,
      int gemsTotal,
      int gemsToday,
      int gemsAllTimeHigh,
      int gemsLikes,
      int gemsViews,
      int gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double> likesPerDay});
}

/// @nodoc
class _$PostPerformanceModelCopyWithImpl<$Res,
        $Val extends PostPerformanceModel>
    implements $PostPerformanceModelCopyWith<$Res> {
  _$PostPerformanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? userId = null,
    Object? imageUrls = null,
    Object? postText = freezed,
    Object? createdAt = freezed,
    Object? gemsTotal = null,
    Object? gemsToday = null,
    Object? gemsAllTimeHigh = null,
    Object? gemsLikes = null,
    Object? gemsViews = null,
    Object? gemsShares = null,
    Object? likesPerDay = null,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postText: freezed == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gemsTotal: null == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int,
      gemsToday: null == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int,
      gemsAllTimeHigh: null == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int,
      gemsLikes: null == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int,
      gemsViews: null == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int,
      gemsShares: null == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int,
      likesPerDay: null == likesPerDay
          ? _value.likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPerformanceModelImplCopyWith<$Res>
    implements $PostPerformanceModelCopyWith<$Res> {
  factory _$$PostPerformanceModelImplCopyWith(_$PostPerformanceModelImpl value,
          $Res Function(_$PostPerformanceModelImpl) then) =
      __$$PostPerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic postId,
      int userId,
      List<String> imageUrls,
      String? postText,
      DateTime? createdAt,
      int gemsTotal,
      int gemsToday,
      int gemsAllTimeHigh,
      int gemsLikes,
      int gemsViews,
      int gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      Map<DateTime, double> likesPerDay});
}

/// @nodoc
class __$$PostPerformanceModelImplCopyWithImpl<$Res>
    extends _$PostPerformanceModelCopyWithImpl<$Res, _$PostPerformanceModelImpl>
    implements _$$PostPerformanceModelImplCopyWith<$Res> {
  __$$PostPerformanceModelImplCopyWithImpl(_$PostPerformanceModelImpl _value,
      $Res Function(_$PostPerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? userId = null,
    Object? imageUrls = null,
    Object? postText = freezed,
    Object? createdAt = freezed,
    Object? gemsTotal = null,
    Object? gemsToday = null,
    Object? gemsAllTimeHigh = null,
    Object? gemsLikes = null,
    Object? gemsViews = null,
    Object? gemsShares = null,
    Object? likesPerDay = null,
  }) {
    return _then(_$PostPerformanceModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postText: freezed == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gemsTotal: null == gemsTotal
          ? _value.gemsTotal
          : gemsTotal // ignore: cast_nullable_to_non_nullable
              as int,
      gemsToday: null == gemsToday
          ? _value.gemsToday
          : gemsToday // ignore: cast_nullable_to_non_nullable
              as int,
      gemsAllTimeHigh: null == gemsAllTimeHigh
          ? _value.gemsAllTimeHigh
          : gemsAllTimeHigh // ignore: cast_nullable_to_non_nullable
              as int,
      gemsLikes: null == gemsLikes
          ? _value.gemsLikes
          : gemsLikes // ignore: cast_nullable_to_non_nullable
              as int,
      gemsViews: null == gemsViews
          ? _value.gemsViews
          : gemsViews // ignore: cast_nullable_to_non_nullable
              as int,
      gemsShares: null == gemsShares
          ? _value.gemsShares
          : gemsShares // ignore: cast_nullable_to_non_nullable
              as int,
      likesPerDay: null == likesPerDay
          ? _value._likesPerDay
          : likesPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostPerformanceModelImpl implements _PostPerformanceModel {
  const _$PostPerformanceModelImpl(
      {required this.postId,
      required this.userId,
      required final List<String> imageUrls,
      this.postText,
      this.createdAt,
      required this.gemsTotal,
      required this.gemsToday,
      required this.gemsAllTimeHigh,
      required this.gemsLikes,
      required this.gemsViews,
      required this.gemsShares,
      @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
      required final Map<DateTime, double> likesPerDay})
      : _imageUrls = imageUrls,
        _likesPerDay = likesPerDay;

  factory _$PostPerformanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPerformanceModelImplFromJson(json);

  @override
  final dynamic postId;
  @override
  final int userId;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final String? postText;
  @override
  final DateTime? createdAt;
  @override
  final int gemsTotal;
  @override
  final int gemsToday;
  @override
  final int gemsAllTimeHigh;
  @override
  final int gemsLikes;
  @override
  final int gemsViews;
  @override
  final int gemsShares;
  final Map<DateTime, double> _likesPerDay;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double> get likesPerDay {
    if (_likesPerDay is EqualUnmodifiableMapView) return _likesPerDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_likesPerDay);
  }

  @override
  String toString() {
    return 'PostPerformanceModel(postId: $postId, userId: $userId, imageUrls: $imageUrls, postText: $postText, createdAt: $createdAt, gemsTotal: $gemsTotal, gemsToday: $gemsToday, gemsAllTimeHigh: $gemsAllTimeHigh, gemsLikes: $gemsLikes, gemsViews: $gemsViews, gemsShares: $gemsShares, likesPerDay: $likesPerDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPerformanceModelImpl &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.postText, postText) ||
                other.postText == postText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      userId,
      const DeepCollectionEquality().hash(_imageUrls),
      postText,
      createdAt,
      gemsTotal,
      gemsToday,
      gemsAllTimeHigh,
      gemsLikes,
      gemsViews,
      gemsShares,
      const DeepCollectionEquality().hash(_likesPerDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPerformanceModelImplCopyWith<_$PostPerformanceModelImpl>
      get copyWith =>
          __$$PostPerformanceModelImplCopyWithImpl<_$PostPerformanceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _PostPerformanceModel implements PostPerformanceModel {
  const factory _PostPerformanceModel(
          {required final dynamic postId,
          required final int userId,
          required final List<String> imageUrls,
          final String? postText,
          final DateTime? createdAt,
          required final int gemsTotal,
          required final int gemsToday,
          required final int gemsAllTimeHigh,
          required final int gemsLikes,
          required final int gemsViews,
          required final int gemsShares,
          @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
          required final Map<DateTime, double> likesPerDay}) =
      _$PostPerformanceModelImpl;

  factory _PostPerformanceModel.fromJson(Map<String, dynamic> json) =
      _$PostPerformanceModelImpl.fromJson;

  @override
  dynamic get postId;
  @override
  int get userId;
  @override
  List<String> get imageUrls;
  @override
  String? get postText;
  @override
  DateTime? get createdAt;
  @override
  int get gemsTotal;
  @override
  int get gemsToday;
  @override
  int get gemsAllTimeHigh;
  @override
  int get gemsLikes;
  @override
  int get gemsViews;
  @override
  int get gemsShares;
  @override
  @JsonKey(fromJson: _likesPerDayFromJson, toJson: _likesPerDayToJson)
  Map<DateTime, double> get likesPerDay;
  @override
  @JsonKey(ignore: true)
  _$$PostPerformanceModelImplCopyWith<_$PostPerformanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
