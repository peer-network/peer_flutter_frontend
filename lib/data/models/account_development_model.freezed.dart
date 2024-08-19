// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_development_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountDevelopmentModel _$AccountDevelopmentModelFromJson(
    Map<String, dynamic> json) {
  return _AccountDevelopmentModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDevelopmentModel {
  List<double> get values => throw _privateConstructorUsedError;
  List<DateTime> get timestamps => throw _privateConstructorUsedError;

  /// Serializes this AccountDevelopmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDevelopmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDevelopmentModelCopyWith<AccountDevelopmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDevelopmentModelCopyWith<$Res> {
  factory $AccountDevelopmentModelCopyWith(AccountDevelopmentModel value,
          $Res Function(AccountDevelopmentModel) then) =
      _$AccountDevelopmentModelCopyWithImpl<$Res, AccountDevelopmentModel>;
  @useResult
  $Res call({List<double> values, List<DateTime> timestamps});
}

/// @nodoc
class _$AccountDevelopmentModelCopyWithImpl<$Res,
        $Val extends AccountDevelopmentModel>
    implements $AccountDevelopmentModelCopyWith<$Res> {
  _$AccountDevelopmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDevelopmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? timestamps = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      timestamps: null == timestamps
          ? _value.timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDevelopmentModelImplCopyWith<$Res>
    implements $AccountDevelopmentModelCopyWith<$Res> {
  factory _$$AccountDevelopmentModelImplCopyWith(
          _$AccountDevelopmentModelImpl value,
          $Res Function(_$AccountDevelopmentModelImpl) then) =
      __$$AccountDevelopmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> values, List<DateTime> timestamps});
}

/// @nodoc
class __$$AccountDevelopmentModelImplCopyWithImpl<$Res>
    extends _$AccountDevelopmentModelCopyWithImpl<$Res,
        _$AccountDevelopmentModelImpl>
    implements _$$AccountDevelopmentModelImplCopyWith<$Res> {
  __$$AccountDevelopmentModelImplCopyWithImpl(
      _$AccountDevelopmentModelImpl _value,
      $Res Function(_$AccountDevelopmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDevelopmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? timestamps = null,
  }) {
    return _then(_$AccountDevelopmentModelImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      timestamps: null == timestamps
          ? _value._timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDevelopmentModelImpl implements _AccountDevelopmentModel {
  const _$AccountDevelopmentModelImpl(
      {required final List<double> values,
      required final List<DateTime> timestamps})
      : _values = values,
        _timestamps = timestamps;

  factory _$AccountDevelopmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDevelopmentModelImplFromJson(json);

  final List<double> _values;
  @override
  List<double> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<DateTime> _timestamps;
  @override
  List<DateTime> get timestamps {
    if (_timestamps is EqualUnmodifiableListView) return _timestamps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timestamps);
  }

  @override
  String toString() {
    return 'AccountDevelopmentModel(values: $values, timestamps: $timestamps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDevelopmentModelImpl &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._timestamps, _timestamps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_timestamps));

  /// Create a copy of AccountDevelopmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDevelopmentModelImplCopyWith<_$AccountDevelopmentModelImpl>
      get copyWith => __$$AccountDevelopmentModelImplCopyWithImpl<
          _$AccountDevelopmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDevelopmentModelImplToJson(
      this,
    );
  }
}

abstract class _AccountDevelopmentModel implements AccountDevelopmentModel {
  const factory _AccountDevelopmentModel(
          {required final List<double> values,
          required final List<DateTime> timestamps}) =
      _$AccountDevelopmentModelImpl;

  factory _AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =
      _$AccountDevelopmentModelImpl.fromJson;

  @override
  List<double> get values;
  @override
  List<DateTime> get timestamps;

  /// Create a copy of AccountDevelopmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDevelopmentModelImplCopyWith<_$AccountDevelopmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CurrencyExchangeModel _$CurrencyExchangeModelFromJson(
    Map<String, dynamic> json) {
  return _CurrencyExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyExchangeModel {
  double get creditValue => throw _privateConstructorUsedError;
  int get totalCreditsInSystem => throw _privateConstructorUsedError;

  /// Serializes this CurrencyExchangeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyExchangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyExchangeModelCopyWith<CurrencyExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyExchangeModelCopyWith<$Res> {
  factory $CurrencyExchangeModelCopyWith(CurrencyExchangeModel value,
          $Res Function(CurrencyExchangeModel) then) =
      _$CurrencyExchangeModelCopyWithImpl<$Res, CurrencyExchangeModel>;
  @useResult
  $Res call({double creditValue, int totalCreditsInSystem});
}

/// @nodoc
class _$CurrencyExchangeModelCopyWithImpl<$Res,
        $Val extends CurrencyExchangeModel>
    implements $CurrencyExchangeModelCopyWith<$Res> {
  _$CurrencyExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyExchangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditValue = null,
    Object? totalCreditsInSystem = null,
  }) {
    return _then(_value.copyWith(
      creditValue: null == creditValue
          ? _value.creditValue
          : creditValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalCreditsInSystem: null == totalCreditsInSystem
          ? _value.totalCreditsInSystem
          : totalCreditsInSystem // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyExchangeModelImplCopyWith<$Res>
    implements $CurrencyExchangeModelCopyWith<$Res> {
  factory _$$CurrencyExchangeModelImplCopyWith(
          _$CurrencyExchangeModelImpl value,
          $Res Function(_$CurrencyExchangeModelImpl) then) =
      __$$CurrencyExchangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double creditValue, int totalCreditsInSystem});
}

/// @nodoc
class __$$CurrencyExchangeModelImplCopyWithImpl<$Res>
    extends _$CurrencyExchangeModelCopyWithImpl<$Res,
        _$CurrencyExchangeModelImpl>
    implements _$$CurrencyExchangeModelImplCopyWith<$Res> {
  __$$CurrencyExchangeModelImplCopyWithImpl(_$CurrencyExchangeModelImpl _value,
      $Res Function(_$CurrencyExchangeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyExchangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditValue = null,
    Object? totalCreditsInSystem = null,
  }) {
    return _then(_$CurrencyExchangeModelImpl(
      creditValue: null == creditValue
          ? _value.creditValue
          : creditValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalCreditsInSystem: null == totalCreditsInSystem
          ? _value.totalCreditsInSystem
          : totalCreditsInSystem // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyExchangeModelImpl implements _CurrencyExchangeModel {
  const _$CurrencyExchangeModelImpl(
      {required this.creditValue, required this.totalCreditsInSystem});

  factory _$CurrencyExchangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyExchangeModelImplFromJson(json);

  @override
  final double creditValue;
  @override
  final int totalCreditsInSystem;

  @override
  String toString() {
    return 'CurrencyExchangeModel(creditValue: $creditValue, totalCreditsInSystem: $totalCreditsInSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyExchangeModelImpl &&
            (identical(other.creditValue, creditValue) ||
                other.creditValue == creditValue) &&
            (identical(other.totalCreditsInSystem, totalCreditsInSystem) ||
                other.totalCreditsInSystem == totalCreditsInSystem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, creditValue, totalCreditsInSystem);

  /// Create a copy of CurrencyExchangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyExchangeModelImplCopyWith<_$CurrencyExchangeModelImpl>
      get copyWith => __$$CurrencyExchangeModelImplCopyWithImpl<
          _$CurrencyExchangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyExchangeModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyExchangeModel implements CurrencyExchangeModel {
  const factory _CurrencyExchangeModel(
      {required final double creditValue,
      required final int totalCreditsInSystem}) = _$CurrencyExchangeModelImpl;

  factory _CurrencyExchangeModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyExchangeModelImpl.fromJson;

  @override
  double get creditValue;
  @override
  int get totalCreditsInSystem;

  /// Create a copy of CurrencyExchangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyExchangeModelImplCopyWith<_$CurrencyExchangeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}