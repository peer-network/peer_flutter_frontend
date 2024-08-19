// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get verified =>
      throw _privateConstructorUsedError; // default to false if not provided
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get verificationToken => throw _privateConstructorUsedError;
  String? get biograph => throw _privateConstructorUsedError;
  int? get amountPosts =>
      throw _privateConstructorUsedError; // corrected field name and default to 0
  int? get amountFollowed =>
      throw _privateConstructorUsedError; // corrected field name and default to 0
  int? get amountFollower =>
      throw _privateConstructorUsedError; // corrected field name and default to 0
  List<PostModel>? get posts => throw _privateConstructorUsedError;
  bool? get isFollowing =>
      throw _privateConstructorUsedError; // corrected field name
  @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
  Map<DateTime, double>? get tokensPerDay => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String username,
      String? imgUrl,
      String? email,
      bool verified,
      String? createdAt,
      String? updatedAt,
      String? verificationToken,
      String? biograph,
      int? amountPosts,
      int? amountFollowed,
      int? amountFollower,
      List<PostModel>? posts,
      bool? isFollowing,
      @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
      Map<DateTime, double>? tokensPerDay});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? imgUrl = freezed,
    Object? email = freezed,
    Object? verified = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? verificationToken = freezed,
    Object? biograph = freezed,
    Object? amountPosts = freezed,
    Object? amountFollowed = freezed,
    Object? amountFollower = freezed,
    Object? posts = freezed,
    Object? isFollowing = freezed,
    Object? tokensPerDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationToken: freezed == verificationToken
          ? _value.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biograph: freezed == biograph
          ? _value.biograph
          : biograph // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPosts: freezed == amountPosts
          ? _value.amountPosts
          : amountPosts // ignore: cast_nullable_to_non_nullable
              as int?,
      amountFollowed: freezed == amountFollowed
          ? _value.amountFollowed
          : amountFollowed // ignore: cast_nullable_to_non_nullable
              as int?,
      amountFollower: freezed == amountFollower
          ? _value.amountFollower
          : amountFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      tokensPerDay: freezed == tokensPerDay
          ? _value.tokensPerDay
          : tokensPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String? imgUrl,
      String? email,
      bool verified,
      String? createdAt,
      String? updatedAt,
      String? verificationToken,
      String? biograph,
      int? amountPosts,
      int? amountFollowed,
      int? amountFollower,
      List<PostModel>? posts,
      bool? isFollowing,
      @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
      Map<DateTime, double>? tokensPerDay});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? imgUrl = freezed,
    Object? email = freezed,
    Object? verified = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? verificationToken = freezed,
    Object? biograph = freezed,
    Object? amountPosts = freezed,
    Object? amountFollowed = freezed,
    Object? amountFollower = freezed,
    Object? posts = freezed,
    Object? isFollowing = freezed,
    Object? tokensPerDay = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationToken: freezed == verificationToken
          ? _value.verificationToken
          : verificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biograph: freezed == biograph
          ? _value.biograph
          : biograph // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPosts: freezed == amountPosts
          ? _value.amountPosts
          : amountPosts // ignore: cast_nullable_to_non_nullable
              as int?,
      amountFollowed: freezed == amountFollowed
          ? _value.amountFollowed
          : amountFollowed // ignore: cast_nullable_to_non_nullable
              as int?,
      amountFollower: freezed == amountFollower
          ? _value.amountFollower
          : amountFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      tokensPerDay: freezed == tokensPerDay
          ? _value._tokensPerDay
          : tokensPerDay // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.username,
      this.imgUrl,
      this.email,
      this.verified = false,
      this.createdAt,
      this.updatedAt,
      this.verificationToken,
      this.biograph,
      this.amountPosts,
      this.amountFollowed,
      this.amountFollower,
      final List<PostModel>? posts,
      this.isFollowing,
      @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
      final Map<DateTime, double>? tokensPerDay})
      : _posts = posts,
        _tokensPerDay = tokensPerDay;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String? imgUrl;
  @override
  final String? email;
  @override
  @JsonKey()
  final bool verified;
// default to false if not provided
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? verificationToken;
  @override
  final String? biograph;
  @override
  final int? amountPosts;
// corrected field name and default to 0
  @override
  final int? amountFollowed;
// corrected field name and default to 0
  @override
  final int? amountFollower;
// corrected field name and default to 0
  final List<PostModel>? _posts;
// corrected field name and default to 0
  @override
  List<PostModel>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFollowing;
// corrected field name
  final Map<DateTime, double>? _tokensPerDay;
// corrected field name
  @override
  @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
  Map<DateTime, double>? get tokensPerDay {
    final value = _tokensPerDay;
    if (value == null) return null;
    if (_tokensPerDay is EqualUnmodifiableMapView) return _tokensPerDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, imgUrl: $imgUrl, email: $email, verified: $verified, createdAt: $createdAt, updatedAt: $updatedAt, verificationToken: $verificationToken, biograph: $biograph, amountPosts: $amountPosts, amountFollowed: $amountFollowed, amountFollower: $amountFollower, posts: $posts, isFollowing: $isFollowing, tokensPerDay: $tokensPerDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.verificationToken, verificationToken) ||
                other.verificationToken == verificationToken) &&
            (identical(other.biograph, biograph) ||
                other.biograph == biograph) &&
            (identical(other.amountPosts, amountPosts) ||
                other.amountPosts == amountPosts) &&
            (identical(other.amountFollowed, amountFollowed) ||
                other.amountFollowed == amountFollowed) &&
            (identical(other.amountFollower, amountFollower) ||
                other.amountFollower == amountFollower) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            const DeepCollectionEquality()
                .equals(other._tokensPerDay, _tokensPerDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      imgUrl,
      email,
      verified,
      createdAt,
      updatedAt,
      verificationToken,
      biograph,
      amountPosts,
      amountFollowed,
      amountFollower,
      const DeepCollectionEquality().hash(_posts),
      isFollowing,
      const DeepCollectionEquality().hash(_tokensPerDay));

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String username,
      final String? imgUrl,
      final String? email,
      final bool verified,
      final String? createdAt,
      final String? updatedAt,
      final String? verificationToken,
      final String? biograph,
      final int? amountPosts,
      final int? amountFollowed,
      final int? amountFollower,
      final List<PostModel>? posts,
      final bool? isFollowing,
      @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
      final Map<DateTime, double>? tokensPerDay}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String? get imgUrl;
  @override
  String? get email;
  @override
  bool get verified; // default to false if not provided
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get verificationToken;
  @override
  String? get biograph;
  @override
  int? get amountPosts; // corrected field name and default to 0
  @override
  int? get amountFollowed; // corrected field name and default to 0
  @override
  int? get amountFollower; // corrected field name and default to 0
  @override
  List<PostModel>? get posts;
  @override
  bool? get isFollowing; // corrected field name
  @override
  @JsonKey(fromJson: _tokensPerDayFromJson, toJson: _tokensPerDayToJson)
  Map<DateTime, double>? get tokensPerDay;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
